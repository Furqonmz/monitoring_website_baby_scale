<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Admin</title>
  <link rel="stylesheet" href="{{ asset('css/1.css') }}">
</head>
<body>
  <div class="login-container">
    <h3>Login Admin</h3>
    <form method="POST" action="0-admin.php">
      <label for="email">
        Email
        <br>
        <input type="email" name="email" id="email" required>
        <br>
      </label>

      <label for="password">
        Password
        <br>
        <input type="password" name="password" id="password" required>
        <br>
      </label>

      <input type="submit" value="Login Admin" id="login">
      <br>

      <div class="icon-list">
        <p><a class="icon" href="/register"> <img src="img/add.png" alt="register">Register</a></p>
        <p><a class="icon" href="/login"> <img src="img/avatar.png" alt="login">User</a></p>
        <p><a class="icon" href="/forgot"> <img src="img/forgot.png" alt="forgot">Forgot Password</a></p>
      </div>
    </form>
  </div>
</body>
</html>
