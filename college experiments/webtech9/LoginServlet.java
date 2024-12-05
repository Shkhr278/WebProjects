import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        // Create cookies for user credentials
        Cookie user1 = new Cookie("user1", "pwd1");
        Cookie user2 = new Cookie("user2", "pwd2");
        Cookie user3 = new Cookie("user3", "pwd3");
        Cookie user4 = new Cookie("user4", "pwd4");

        // Set expiration time for cookies
        user1.setMaxAge(60 * 60); // 1 hour
        user2.setMaxAge(60 * 60);
        user3.setMaxAge(60 * 60);
        user4.setMaxAge(60 * 60);

        // Add cookies to response
        getServletContext().setAttribute("cookies", new Cookie[] { user1, user2, user3, user4 });
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get user input
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");

        // Get cookies
        Cookie[] cookies = (Cookie[]) getServletContext().getAttribute("cookies");
        boolean isAuthenticated = false;

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(userId) && cookie.getValue().equals(password)) {
                    isAuthenticated = true;
                    break;
                }
            }
        }

        // Display results
        if (isAuthenticated) {
            out.println("<h1>Welcome, " + userId + "!</h1>");
        } else {
            out.println("<h1>Invalid User ID or Password.</h1>");
            out.println("<a href='login.html'>Try Again</a>");
        }
    }
}
