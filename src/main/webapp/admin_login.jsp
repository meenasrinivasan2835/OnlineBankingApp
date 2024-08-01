<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            background: linear-gradient(to right, #E0FBE2, #BFF6C3, #B0EBB4);
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            margin: 0;
        }

        h1, h2 {
            color: #333;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            text-align: left;
        }

        form {
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #7ABA78; /* Default button color */
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transition for color and scaling */
        }

        input[type="submit"]:hover {
            background-color: #6AAE6A; /* Color when hovered */
        }

        input[type="submit"]:active {
            background-color: #0A6847; /* Color when clicked */
            transform: scale(0.98); /* Slightly scale down the button on click */
        }

        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            width: 100%;
            max-width: 300px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        form div {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <h1>Online Banking Application</h1>
    <h2>Admin Login</h2>
    
    <div class="form-container">
        <form action="AdminLoginServlet" method="post">
            <div>
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>

