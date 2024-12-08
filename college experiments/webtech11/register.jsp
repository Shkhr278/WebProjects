<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User Registration</title>
  </head>
  <body>
    <h2>Register Users</h2>
    <form method="post">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required /><br /><br />

      <label for="password">Password:</label>
      <input
        type="password"
        id="password"
        name="password"
        required
      /><br /><br />

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required /><br /><br />

      <label for="phone">Phone:</label>
      <input type="text" id="phone" name="phone" required /><br /><br />

      <button type="submit">Register</button>
    </form>

    <% if (request.getMethod().equalsIgnoreCase("POST")) { String username =
    request.getParameter("username"); String password =
    request.getParameter("password"); String email =
    request.getParameter("email"); String phone = request.getParameter("phone");
    try { Connection conn = DBConnection.getConnection(); String sql = "INSERT
    INTO users (username, password, email, phone) VALUES (?, ?, ?, ?)";
    PreparedStatement stmt = conn.prepareStatement(sql); stmt.setString(1,
    username); stmt.setString(2, password); stmt.setString(3, email);
    stmt.setString(4, phone); stmt.executeUpdate(); out.println("
    <p>User registered successfully!</p>
    "); stmt.close(); conn.close(); } catch (Exception e) { e.printStackTrace();
    out.println("
    <p>Error: Unable to register user.</p>
    "); } } %>
  </body>
</html>
