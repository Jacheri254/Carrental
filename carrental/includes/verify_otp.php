<?php
session_start();

if(isset($_POST['verify'])) {
    $entered_otp = $_POST['otp'];

    if($entered_otp == $_SESSION['otp']) {
        $_SESSION['login'] = $_SESSION['temp_email'];
        $_SESSION['mobile'] = $_SESSION['temp_mobile'];

        // Unset temporary OTP session
        unset($_SESSION['otp']);
        unset($_SESSION['temp_email']);
        unset($_SESSION['temp_mobile']);

        // Redirect to dashboard
        echo "<script>alert('Login Successful!');</script>";
        echo "<script type='text/javascript'> document.location = 'index.php'; </script>";
    } else {
        echo "<script>alert('Invalid OTP. Try Again.');</script>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Verify OTP</title>
</head>
<body>
    <h2>Enter OTP</h2>
    <form method="post">
        <label>OTP Code:</label>
        <input type="text" name="otp" required>
        <input type="submit" name="verify" value="Verify OTP">
    </form>
</body>
</html>
