<?php
include('mpesa_config.php');

$accessToken = getAccessToken();

if ($accessToken) {
    echo "Access Token: " . $accessToken;
} else {
    echo "Failed to get access token.";
}
?>
