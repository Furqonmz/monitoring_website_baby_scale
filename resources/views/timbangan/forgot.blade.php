<!DOCTYPE html>
<html>
<head>
    <title>Reset Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Alat Ukur Berat dan Tinggi Bayi</title>
    <link rel="stylesheet" href="{{ asset('css/1.css') }}">
</head>
<body>
    <div class="login-container">
        <h2>Reset Password</h2>

        <form method="POST">
            <label>Masukkan Email Anda:</label>
            <input type="email" name="email" required>
            <input type="submit" value="Kirim OTP" id="login">
        </form>

        <div class="icon-list">
            <p><a class="icon" href="/login"> <img src="img/avatar.png" alt="login">Login disini</a></p>
        </div>
    </div>
</body>
</html>