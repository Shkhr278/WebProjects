<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Authentication</title>
  </head>
  <body>
    <% String username = request.getParameter("username"); String password =
    request.getParameter("password"); try { Connection conn =
    DBConnection.getConnection(); String sql = "SELECT * FROM users WHERE
    username = ? AND password = ?"; PreparedStatement stmt =
    conn.prepareStatement(sql); stmt.setString(1, username); stmt.setString(2,
    password); ResultSet rs = stmt.executeQuery(); if (rs.next()) {
    out.println("
    <h2>Welcome, " + rs.getString("username") + "!</h2>
    "); out.println("
    <p>Email: " + rs.getString("email") + "</p>
    "); out.println("
    <p>Phone: " + rs.getString("phone") + "</p>
    "); } else { out.println("
    <h2>Authentication Failed! Invalid username or password.</h2>
    "); } rs.close(); stmt.close(); conn.close(); } catch (Exception e) {
    e.printStackTrace(); out.println("
    <p>Error: Unable to authenticate user.</p>
    "); } %>
  </body>
</html>
