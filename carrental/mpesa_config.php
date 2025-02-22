<?php
define('MPESA_CONSUMER_KEY', 'J472EGA7NDyGg2Ew81TYCtT2oWqcb84OHSJaNN8NfLLiJMmQ');
define('MPESA_CONSUMER_SECRET', 'ka5aw0JlLn8WmwT54X1yxsDxAbb9mBGR1e2Rh2zS1gbYUIWxSYSoT6qYLRXpyXQK');
define('MPESA_SHORTCODE', '174379');
define('MPESA_PASSKEY', 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919');
define('MPESA_CALLBACK_URL', 'https://random-id.ngrok-free.app/mpesa_callback.php');


function getAccessToken() {
    $url = 'https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials';
    $credentials = base64_encode(MPESA_CONSUMER_KEY . ':' . MPESA_CONSUMER_SECRET);
    $headers = ['Authorization: Basic ' . $credentials];

    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    $response = json_decode(curl_exec($curl), true);
    curl_close($curl);

    return $response['access_token'] ?? null;
}
?>

