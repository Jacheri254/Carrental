<?php
session_start();
include('mpesa_config.php');
include('includes/config.php');

if (!isset($_SESSION['login'])) {
    header('location:index.php');
    exit;
}

if (isset($_POST['pay'])) {
    $phone = $_POST['phone'];
    $amount = $_POST['amount'];
    $bookingNumber = $_POST['booking_number'];

    // ✅ Ensure phone number is in the correct format (convert 07XXXXXXXX → 2547XXXXXXXX)
    $phone = preg_replace('/\D/', '', $phone); // Remove non-numeric characters

    if (substr($phone, 0, 1) == "0") {
        $phone = "254" . substr($phone, 1);
    } elseif (substr($phone, 0, 3) !== "254") {
        die("<script>alert('Invalid phone number format. Use 2547XXXXXXXX.');</script>");
    }

    // ✅ Get Mpesa access token
    $accessToken = getAccessToken();
    if (!$accessToken) {
        die("<script>alert('Error getting Mpesa access token.');</script>");
    }

    // ✅ Generate Mpesa password
    $timestamp = date('YmdHis');
    $password = base64_encode(MPESA_SHORTCODE . MPESA_PASSKEY . $timestamp);

    $stkURL = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest";
    $headers = [
        'Content-Type: application/json',
        'Authorization: Bearer ' . $accessToken
    ];

    $request = [
        'BusinessShortCode' => MPESA_SHORTCODE,
        'Password' => $password,
        'Timestamp' => $timestamp,
        'TransactionType' => 'CustomerPayBillOnline',
        'Amount' => $amount,
        'PartyA' => $phone, // ✅ Fixed Phone Format
        'PartyB' => MPESA_SHORTCODE,
        'PhoneNumber' => $phone, // ✅ Fixed Phone Format
        'CallBackURL' => MPESA_CALLBACK_URL,
        'AccountReference' => 'AutoLeasePro',
        'TransactionDesc' => 'Car Booking Payment'
    ];

    $curl = curl_init($stkURL);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($request));
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($curl);
    curl_close($curl);

    // ✅ Check if response is valid JSON
    $decodedResponse = json_decode($response, true);
    if (!$decodedResponse) {
        file_put_contents('stkpush_log.txt', "Invalid JSON Response: " . $response . PHP_EOL, FILE_APPEND);
        die("<script>alert('Invalid Mpesa response. Check logs.');</script>");
    }

    // ✅ Log API response
    file_put_contents('stkpush_log.txt', json_encode($decodedResponse, JSON_PRETTY_PRINT) . PHP_EOL, FILE_APPEND);

    // ✅ Check if payment request was successful
    if (isset($decodedResponse['CheckoutRequestID'])) {
        $sql = "INSERT INTO payments (user_email, booking_number, transaction_id, amount, status)
                VALUES (:user_email, :booking_number, :transaction_id, :amount, 'Pending')";
        $stmt = $dbh->prepare($sql);
        $stmt->execute([
            ':user_email' => $_SESSION['login'],
            ':booking_number' => $bookingNumber,
            ':transaction_id' => $decodedResponse['CheckoutRequestID'],
            ':amount' => $amount
        ]);

        echo "<script>alert('Payment request sent. Approve on your phone.');</script>";
    } else {
        echo "<script>alert('Payment failed. Try again. Error: " . $decodedResponse['errorMessage'] . "');</script>";
    }
}
?>

