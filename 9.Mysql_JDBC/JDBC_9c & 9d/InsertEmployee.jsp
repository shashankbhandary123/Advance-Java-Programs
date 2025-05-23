<%-- Develop a JDBC project using JSP to append the fields empno, empname and basicsalary
into the table Emp of the database Employee by getting the fields through keyboard and
Generate the report as follows for the TABLE Emp (Emp_NO , Emp_Name, Basicsalary ) using
HTML and JSP to get the fields and display the results respectively

Salary Report

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Emp_No : 101
Emp_Name: Ramesh'
Basic : 25000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Emp_No : 102
Emp_Name: Ravi
Basic : 20000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
....
...
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~````
Grand Salary : 45000
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ --%>
<%--
CREATE TABLE Emp (
Emp_NO INTEGER PRIMARY KEY,
Emp_Name TEXT NOT NULL,
Basicsalary INTEGER
);
-- insert
INSERT INTO EMPLOYEE VALUES (101, 'Ramesh', 25000);
INSERT INTO EMPLOYEE VALUES (102, 'Ravi', 20000); --%>
<%@ page import="java.sql.*" %>
<%
    int empno = Integer.parseInt(request.getParameter("empno"));
    String empname = request.getParameter("empname");
    int salary = Integer.parseInt(request.getParameter("salary"));

    Connection conn = null;
    PreparedStatement ps = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee", "root", "");

        String sql = "INSERT INTO Emp (Emp_NO, Emp_Name, Basicsalary) VALUES (?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setInt(1, empno);
        ps.setString(2, empname);
        ps.setInt(3, salary);
        ps.executeUpdate();

        out.println("<p>Employee added successfully!</p>");
        out.println("<a href='Report.jsp'>View Report</a>");
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    } finally {
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>