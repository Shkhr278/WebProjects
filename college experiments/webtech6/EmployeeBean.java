public class EmployeeBean {
    private int empID;
    private String name;
    private double salary;
    private String designation;
    private String department;

    // No-argument constructor
    public EmployeeBean() {}

    // Constructor with parameters
    public EmployeeBean(int empID, String name, double salary, String designation, String department) {
        this.empID = empID;
        this.name = name;
        this.salary = salary;
        this.designation = designation;
        this.department = department;
    }

    // Getter and Setter methods
    public int getEmpID() {
        return empID;
    }

    public void setEmpID(int empID) {
        this.empID = empID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }
}
