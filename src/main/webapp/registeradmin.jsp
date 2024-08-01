<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Admin</title>
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
        }
        input[type="text"], input[type="password"], input[type="submit"], button {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            box-sizing: border-box;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 16px;
        }
        input[type="text"], input[type="password"] {
            border: 2px solid #ccc;
        }
        input[type="submit"], button {
            background-color: #7ABA78; /* Default button color */
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth transition for color and scaling */
        }
        input[type="submit"]:hover, button:hover {
            background-color: #6AAE6A; /* Color when hovered */
        }
        input[type="submit"]:active, button:active {
            background-color: #0A6847; /* Color when clicked */
            transform: scale(0.98); /* Slightly scale down the button on click */
        }
        p {
            color: #555;
            font-size: 16px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Register Admin</h2>
        <form method="post">
            Username: <input type="text" name="username" required><br>
            Password: <input type="password" name="password" required><br>
            <input type="submit" value="Register">
        </form>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username != null && password != null) {
                Connection conn = null;
                PreparedStatement ps = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver"); // Replace with your JDBC driver
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "12345@goat");
                    String sql = "INSERT INTO admins (username, password) VALUES (?, ?)";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, username);
                    ps.setString(2, password);
                    int result = ps.executeUpdate();
                    if (result > 0) {
        %>
                        <p>Admin registered successfully!</p>
        <%
                    } else {
        %>
                        <p>Failed to register admin. Please try again.</p>
        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
        %>
                    <p>An error occurred while registering the admin.</p>
        <%
                } finally {
                    try {
                        if (ps != null) ps.close();
                        if (conn != null) conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </div>
    <div class="container">
        <form action="main.jsp" method="get">
            <button type="submit">Go to Admin Dashboard</button>
        </form>
    </div>
</body>
</html>

