<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
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
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        p {
            color: #555;
            font-size: 16px;
            margin: 10px 0;
        }
        button {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            background-color: #7ABA78; /* Default button color */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px; /* Font size for button */
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
        <h2>Registration Successful</h2>
        <p>Full Name: <%= request.getAttribute("fullName") %></p>
        <p>Account Number: <%= request.getAttribute("accountNo") %></p>
        <p>Password: <%= request.getAttribute("password") %></p>
        
        <form action="main.jsp" method="get">
            <button type="submit">Go to Admin Dashboard</button>
        </form>
    </div>
</body>
</html>



    