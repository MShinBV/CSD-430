<%-- Miles Shinsato, 11/22/2026, CSD430-306J_2273_DD, Assignment 5.3 & 6.3 --%>

<%-- This jsp file is to show all the movie IDs in a clickable dropdown for the user to pick out a movie --%>

<%@ page import="beans.MovieBean" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>Movie Database</title>

    <%-- Link the external CSS stylesheet --%>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h1>Movie Database</h1>
<p>The dropdown menu on this page will pull data on the movie ID values from the CSD430 database. <br> Please pick out a movie ID to see the movie's details.</p>
<h2>Select a Movie ID</h2>

<%
    // Create a MovieBean and get the list of movie IDs
    MovieBean movieBean = new MovieBean();
    List<Integer> movieIds = movieBean.getMovieIds();
%>

<!-- Form used to select a movie from the database -->
<form action="display.jsp" method="get">

    <label for="movieId">Movie ID:</label>

    <select name="movieId" id="movieId">

        <%
            // Add each movie ID to the dropdown menu
            for (Integer id : movieIds) {
        %>

        <option value="<%= id %>"><%= id %></option>

        <%
            }
        %>

    </select>

    <!-- Submit the selected movie ID to display.jsp -->
    <input type="submit" value="Display Movie">

</form>

</body>
</html>
