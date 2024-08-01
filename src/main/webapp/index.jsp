<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login System</title>
    <style>
        body {
            background: linear-gradient(to right, #E0FBE2, #BFF6C3, #B0EBB4);
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
            margin: 0;
        }

        h1 {
            color: #333;
        }

        h2 {
            color: #555;
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
    </style>
</head>
<body>
    <h1>Online Banking Application</h1>
    <h2>Admin Login</h2>
    
    <form action="admin_login.jsp" method="get">
        <input type="submit" value="Admin Login">
    </form>
</body>
</html>


