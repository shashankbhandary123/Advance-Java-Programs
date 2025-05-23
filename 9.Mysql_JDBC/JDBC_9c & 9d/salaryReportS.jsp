<%--
Develop a JDBC project using MySQL to delete the records in the table Emp of the database
Employee by getting the name starting with ‘S’ through keyboard and Generate the report as
follows using HTML and JSP to get the field and display the results respectively

CREATE TABLE Emp (
Emp_NO INTEGER PRIMARY KEY,
Emp_Name TEXT NOT NULL,
Basicsalary INTEGER
);
-- insert
INSERT INTO EMPLOYEE VALUES (101, 'Ramesh', 25000);
INSERT INTO EMPLOYEE VALUES (102, 'Ravi', 20000); --%>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Salary Report - Emp Name Starting with S</title>
    <style>
        body {
            font-family: monospace;
        }
        .line {
            border-top: 1px solid #000;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<pre>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    Salary Report
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<%
    int grandTotal = 0;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee", "root", "");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM Emp WHERE Emp_Name LIKE 'S%'");

        while (rs.next()) {
            int no = rs.getInt("Emp_NO");
            String name = rs.getString("Emp_Name");
            int salary = rs.getInt("Basicsalary");
            grandTotal += salary;
%>
Emp_No    : <%= no %>  
Emp_Name  : <%= name %>  
Basic     : <%= salary %>  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
<%
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>
Grand Total Salary = <%= grandTotal %>  
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
</pre>
</body>
</html>