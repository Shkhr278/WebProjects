import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL Driver
        String url = "jdbc:mysql://localhost:3306/UserDB";
        String username = "root"; // Replace with your DB username
        String password = ""; // Replace with your DB password
        return DriverManager.getConnection(url, username, password);
    }
}
