<%-- Miles Shinsato, 11/20/2026, CSD430-306J, Assignment 5.2 & 6.2 --%>
<%-- Index to hold links to all the module's CRUD deliverables --%>

<%-- Tells the server that this is a JSP page and specifies the response format and character encoding. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <%-- Set the text in the browser tab. --%>
    <title>CSD430 Database Project</title>
    <!-- Linking the external CSS stylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%-- Main heading displayed on the webpage --%>
<h1>CSD430 Database Project</h1>
<h2>Module 5 - Movies Database</h2>
<p>CRUD Deliverables:</p>

<!-- Table containing the four CRUD operations -->
<!-- Placeholders for links of each of the CRUD operations -->
<table class="crud-table">
    <tr>
        <td><a href="#">Create</a></td>
        <td><a href="#">Read</a></td>
        <td><a href="#">Update</a></td>
        <td><a href="#">Delete</a></td>
    </tr>
</table>
</body>
</html>
