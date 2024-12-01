import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class EmployeeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Create EmployeeBeans for five employees
        List<EmployeeBean> employees = new ArrayList<>();
        employees.add(new EmployeeBean(101, "John Doe", 50000, "Software Engineer", "IT"));
        employees.add(new EmployeeBean(102, "Jane Smith", 60000, "Project Manager", "Management"));
        employees.add(new EmployeeBean(103, "Mike Johnson", 45000, "HR Specialist", "HR"));
        employees.add(new EmployeeBean(104, "Emily Davis", 70000, "Senior Developer", "IT"));
        employees.add(new EmployeeBean(105, "Chris Lee", 55000, "Marketing Head", "Marketing"));

        // Set the list of employees as an attribute for the request
        request.setAttribute("employees", employees);

        // Forward the request to the JSP page for rendering
        RequestDispatcher dispatcher = request.getRequestDispatcher("employeeList.jsp");
        dispatcher.forward(request, response);
    }
}
