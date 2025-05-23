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
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head><title>Add Employee</title></head>
<body>
<h2>Enter Employee Details</h2>
<form action="InsertEmployee.jsp" method="post">
    Emp No: <input type="text" name="empno" required /><br/><br/>
    Name: <input type="text" name="empname" required /><br/><br/>
    Basic Salary: <input type="text" name="salary" required /><br/><br/>
    <input type="submit" value="Add Employee" />
</form>
</body>
</html>
