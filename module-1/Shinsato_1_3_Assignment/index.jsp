<%-- Miles Shinsato, 10/24/2026, CSD430-306J_2273_DD, Assignment 1.3 --%>
<!DOCTYPE html>
<html lang="en">
<head>

    <%-- Creating the title text --%>
    <title>Shinsato 1.3 Assignment - CSD-430</title>

    <%-- Styling the page to be all centered --%>
    <style>
        body { text-align: center}
    </style>
</head>


<body>
    <%-- Header text followed by my information --%>
    <h1> Assignment 1.3 JSP Test Page</h1>
    <p><b>Name:</b> Miles Shinsato</p>
    <p><b>Date Completed:</b> October 24, 2026</p>
    <p><b>Course:</b> CSD430-306J_2273_DD</p>

    <hr>

    <p> Here is my submission for Assignment 1.3 in CSD-430.<br>
        Below there will be a few simple Java code examples.</p>

    <hr>

    <%

        // Java code to display a message
        String testText = "This JSP file is being shown through Apache Tomcat.";
        // Java code to show the current date and time
        java.time.LocalDateTime currentDateTime= java.time.LocalDateTime.now();
        // Formatting the date and time for display
        java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ofPattern("MMMM dd, yyyy 'at' h:mm a");
        // String to showcase date and time
        String formattedDateTime = currentDateTime.format(formatter);

        // Java code to do some math
        int x = 32;
        int y = 576;
        int sum = x + y;
        int quotient = y / x;

    %>

    <%-- Printing testText --%>
    <p><%= testText%></p>

    <%-- Printing today's date and time --%>
    <p>Today is <%= formattedDateTime%>

    <%-- Printing the test math out --%>
    <p>The sum of <%= x %> + <%= y %> is <%= sum %></p>
    <p>The quotient of <%= y %> / <%= x %> is <%= quotient %></p>

</body>
</html>