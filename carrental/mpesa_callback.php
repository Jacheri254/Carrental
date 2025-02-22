<?php
include('includes/config.php');

// Read raw POST data from Mpesa API
$data = file_get_contents('php://input');

// Log the raw data to a file for debugging
file_put_contents('mpesa_log.txt', $data . PHP_EOL, FILE_APPEND);

// Check if data is empty
if (!$data) {
    die('No data received.');
}

// Decode JSON
$response = json_decode($data, true);

// Check if JSON is valid
if ($response === null) {
    die('Invalid JSON format: ' . json_last_error_msg());
}

// Ensure stkCallback exists
if (!isset($response['Body']['stkCallback'])) {
    die('Missing stkCallback data.');
}

// Extract Mpesa response details
$stkCallback = $response['Body']['stkCallback'];

if ($stkCallback['ResultCode'] == 0) {
    $transaction_id = $stkCallback['CheckoutRequestID'];
    $callbackMetadata = $stkCallback['CallbackMetadata']['Item'] ?? [];

    // Extract Mpesa Receipt Number
    $mpesa_receipt = null;
    foreach ($callbackMetadata as $item) {
        if ($item['Name'] == "MpesaReceiptNumber") {
            $mpesa_receipt = $item['Value'];
            break;
        }
    }

    if ($mpesa_receipt) {
        // Update payment record in the database
        $sql = "UPDATE payments SET transaction_id=:mpesa_receipt, status='Completed' WHERE transaction_id=:transaction_id";
        $stmt = $dbh->prepare($sql);
        $stmt->execute([
            ':mpesa_receipt' => $mpesa_receipt,
            ':transaction_id' => $transaction_id
        ]);
        echo "Payment successful!";
    } else {
        die("MpesaReceiptNumber not found in metadata.");
    }
} else {
    echo "Payment failed. Error Code: " . $stkCallback['ResultCode'];
}
?>

