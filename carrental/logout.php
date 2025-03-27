<?php
session_start(); 

// Unset all session variables
$_SESSION = [];

// Destroy session cookie if it exists
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 3600, // Expire immediately
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// Destroy the session
session_destroy(); 

// Redirect to login or homepage
header("Location: index.php");
exit; // Ensures script stops execution after redirect
?>
