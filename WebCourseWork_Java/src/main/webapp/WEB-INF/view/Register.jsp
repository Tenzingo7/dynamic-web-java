<!DOCTYPE html>
<html lang="en">
<head>
	<script src="https://kit.fontawesome.com/ac966e1bc8.js" ></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration form</title>
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
        input[type="email"],
        input[type="tel"],
        input[type="password"] {
            width: 100%;
            height: 32px;
            border: 1px solid #ddd;
            border-radius: 6px;
            padding: 0 10px;
            margin-bottom: 8px;
            font-size: 14px;
        }
        input[type="submit"],
        .back-btn {
            display: block;
            width: 100%;
            height: 36px;
            border: none;
            border-radius: 6px;
            background-color: #007bff;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.3s;
            line-height: 36px;
            text-align: center;
            margin-top: 10px;
        }
        input[type="submit"]:hover,
        .back-btn:hover {
            background-color: #0056b3;
        }
        .back-btn {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
    	<a href = "#"><i class="fa-solid fa-xmark"></i></a>
        <h1>Registration Form</h1>
        <form action="userRegister" method = "post">
            <label for="first-name">Username</label>
            <input type="text" id="user-name" name = "UserName" required>
            <label for="first-name">First Name</label>
            <input type="text" id="first-name" name = "FirstName" required>

            <label for="last-name">Last Name</label>
            <input type="text" id="last-name" name = "LastName" required>

            <label for="address">Address</label>
            <input type="text" id="address" name = "Address" required>

            <label for="country">Country</label>
            <input type="text" id="country" name = "Country" required>

            <label for="phone-number">Phone Number</label>
            <input type="tel" id="phone-number" name = "PhoneNumber" required>

            <label for="email">Email</label>
            <input type="email" id="email" name = "Email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name = "Password" required>

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
