<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Employee Information</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f4f7f9;
        color: #333;
        margin: 20px;
      }

      h1 {
        text-align: center;
        color: #2c3e50;
      }

      table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
      }

      table,
      th,
      td {
        border: 1px solid #ddd;
        border-radius: 5px;
      }

      th,
      td {
        padding: 10px;
        text-align: center;
      }

      th {
        background-color: #16a085;
        color: white;
      }

      td {
        background-color: #ecf0f1;
      }

      tr:nth-child(even) td {
        background-color: #bdc3c7;
      }

      tr:hover td {
        background-color: #f1c40f;
      }

      /* Responsive design */
      @media screen and (max-width: 768px) {
        table {
          font-size: 14px;
        }

        th,
        td {
          padding: 8px;
        }
      }
    </style>
  </head>
  <body>
    <h1>Employee Information</h1>

    <table>
      <tr>
        <th>EmpID</th>
        <th>Name</th>
        <th>Salary</th>
        <th>Designation</th>
        <th>Department</th>
      </tr>
      <c:forEach var="employee" items="${employees}">
        <tr>
          <td>${employee.empID}</td>
          <td>${employee.name}</td>
          <td>${employee.salary}</td>
          <td>${employee.designation}</td>
          <td>${employee.department}</td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
