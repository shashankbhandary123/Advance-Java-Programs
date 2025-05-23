<!-- Develop a JDBC project using JDBC to update the fields empno, empname and basicsalary into
the table Emp of the database Employee using HTML and JSP to get the fields and display the
results respectively -->
<html>
<head><title>Update Employee</title></head>
<body>
<h2>Update Employee Details</h2>
<form action="updateEmployee.jsp" method="post">
    <label>Employee No:</label> <input type="text" name="empno" required><br><br>
    <label>Employee Name:</label> <input type="text" name="empname" required><br><br>
    <label>Basic Salary:</label> <input type="text" name="basicsalary" required><br><br>
    <input type="submit" value="Update">
</form>
</body>
</html>