<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #E0FBE2, #BFF6C3, #B0EBB4); /* Linear gradient background */
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 4px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        button {
            width: 80%; /* Reduced button size */
            padding: 10px; /* Reduced padding */
            margin: 10px 0;
            background-color: #7ABA78; /* Default button color */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px; /* Reduced font size */
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transition for color and scaling */
        }
        button:hover {
            background-color: #6AAE6A; /* Color when hovered */
        }
        button:active {
            background-color: #0A6847; /* Color when clicked */
            transform: scale(0.98); /* Slightly scale down the button on click */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Dashboard</h2>
        <form action="register.jsp">
            <button type="submit">Register Customer</button>
        </form>
        <form action="ViewCustomer.jsp">
            <button type="submit">View Customer</button>
        </form>
        <form action="registeradmin.jsp">
            <button type="submit">Register Admin</button>
        </form>
        <form action="index.jsp" method="get">
            <button type="submit">Logout</button>
        </form>
    </div>
</body>
</html>


