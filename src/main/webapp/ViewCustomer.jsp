<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Customer</title>
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
        input[type="text"], input[type="submit"], button {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            box-sizing: border-box;
            border-radius: 4px;
            border: 1px solid #ddd;
            font-size: 16px;
        }
        input[type="text"] {
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
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>View Customer</h2>
        <form method="post">
            Account Number: <input type="text" name="accountNo" required><br>
            <input type="submit" value="View Details">
        </form>

        <%
            String accountNo = request.getParameter("accountNo");
            if (accountNo != null && !accountNo.trim().isEmpty()) {
                Connection conn = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver"); // Replace with your JDBC driver
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb", "root", "12345@goat");
                    String sql = "SELECT account_no, full_name, email_id, mobile_no, initial_balance FROM user_details WHERE account_no = ?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, accountNo);
                    rs = ps.executeQuery();

                    if (rs.next()) {
        %>
                        <table>
                            <tr>
                                <th>Account Number</th>
                                <td><%= rs.getString("account_no") %></td>
                            </tr>
                            <tr>
                                <th>Full Name</th>
                                <td><%= rs.getString("full_name") %></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><%= rs.getString("email_id") %></td>
                            </tr>
                            <tr>
                                <th>Phone</th>
                                <td><%= rs.getString("mobile_no") %></td>
                            </tr>
                            <tr>
                                <th>Initial Balance</th>
                                <td><%= rs.getDouble("initial_balance") %></td>
                            </tr>
                        </table>
        <%
                    } else {
        %>
                        <p>No customer found with account number <%= accountNo %>.</p>
        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
        %>
                    <p>An error occurred while retrieving customer details.</p>
        <%
                } finally {
                    try {
                        if (rs != null) rs.close();
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
