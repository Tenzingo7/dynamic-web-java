<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            min-height: 100vh;
            background-color: #f9f9f9;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 300px;
            width: 100%;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
            font-size: 20px;
        }
        label {
            display: block;
            margin-bottom: 4px;
            color: #666;
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            height: 40px; /* Adjusted height */
            border: 1px solid #ddd;
            border-radius: 6px;
            padding: 0 10px;
            margin-bottom: 10px; /* Increased margin bottom */
            font-size: 16px; /* Adjusted font size */
        }

        input[type="submit"] {
            display: block;
            width: calc(100% - 40px); /* Adjusted width */
            height: 32px; /* Adjusted height */
            border: none;
            border-radius: 6px;
            background-color: #007bff;
            color: #fff;
            font-size: 14px; /* Adjusted font size */
            font-weight: bold;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.3s;
            line-height: 32px; /* Adjusted line height */
            text-align: center;
            margin: 10px auto; /* Centering the button */
            padding: 0 10px; /* Adjusted padding */
            background-size: 8px 8px; /* Adjusted background size */
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
            text-decoration: none;
            color: #007bff;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Form</h1>
        <form action="userLogin" method = "post">
            <label for="Username" >Username</label>
            <input type="text" name= "Username" id="username" required>
            <label for="password">Password</label>
            <input type="password" name= "Password" id="password" required>

            <input type="submit" value="Login">
            <a href="userRegister" class="back-link">Don't have an
account? Register here</a>
        </form>
    </div>
</body>
</html>
