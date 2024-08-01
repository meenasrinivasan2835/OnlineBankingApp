<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register User</title>
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
        form {
            margin-top: 20px;
            text-align: left;
        }
        input[type="text"], input[type="email"], input[type="number"], input[type="date"], textarea, select {
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            width: 100%;
            max-width: 100%;
        }
        input[type="submit"], button {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            background-color: #7ABA78; /* Default button color */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px; /* Reduced font size */
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transition for color and scaling */
        }
        input[type="submit"]:hover, button:hover {
            background-color: #6AAE6A; /* Color when hovered */
        }
        input[type="submit"]:active, button:active {
            background-color: #0A6847; /* Color when clicked */
            transform: scale(0.98); /* Slightly scale down the button on click */
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
    <div class="container">
        <h2>Register User</h2>
        <form action="RegisterUserServlet" method="post">
            <div>
                <label for="fullName">Full Name:</label>
                <input type="text" id="fullName" name="fullName" required>
            </div>
            <div>
                <label for="address">Address:</label>
                <textarea id="address" name="address" required></textarea>
            </div>
            <div>
                <label for="mobileNo">Mobile No:</label>
                <input type="text" id="mobileNo" name="mobileNo" required>
            </div>
            <div>
                <label for="emailId">Email ID:</label>
                <input type="email" id="emailId" name="emailId" required>
            </div>
            <div>
                <label for="accountType">Account Type:</label>
                <select id="accountType" name="accountType" required>
                    <option value="Saving">Saving Account</option>
                    <option value="Current">Current Account</option>
                </select>
            </div>
            <div>
                <label for="initialBalance">Initial Balance:</label>
                <input type="number" id="initialBalance" name="initialBalance" min="1000" required>
            </div>
            <div>
                <label for="dateOfBirth">Date of Birth:</label>
                <input type="date" id="dateOfBirth" name="dateOfBirth" required>
            </div>
            <div>
                <label for="idProof">ID Proof:</label>
                <input type="text" id="idProof" name="idProof" required>
            </div>
            <input type="submit" value="Register">
        </form>
        <form action="main.jsp" method="get">
            <button type="submit">Back to Dashboard</button>
        </form>
    </div>
</body>
</html>


    