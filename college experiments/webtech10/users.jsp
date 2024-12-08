<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>All Users</title>
  </head>
  <body>
    <h2>Registered Users</h2>
    <table border="1">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
      </tr>
      <% try { Connection conn = DBConnection.getConnection(); String sql =
      "SELECT * FROM users"; Statement stmt = conn.createStatement(); ResultSet
      rs = stmt.executeQuery(sql); while (rs.next()) { out.println("
      <tr>
        "); out.println("
        <td>" + rs.getInt("id") + "</td>
        "); out.println("
        <td>" + rs.getString("name") + "</td>
        "); out.println("
        <td>" + rs.getString("email_id") + "</td>
        "); out.println("
        <td>" + rs.getString("phone_number") + "</td>
        "); out.println("
      </tr>
      "); } rs.close(); stmt.close(); conn.close(); } catch (Exception e) {
      e.printStackTrace(); } %>
    </table>
  </body>
</html>
