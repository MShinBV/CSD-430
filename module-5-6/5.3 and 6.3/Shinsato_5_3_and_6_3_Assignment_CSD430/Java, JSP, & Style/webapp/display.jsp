<%-- Miles Shinsato, 11/22/2026, CSD430-306J_2273_DD, Assignment 5.3 & 6.3 --%>
<%-- This jsp is file is to show users the movie details of each movie --%>


<%@ page import="beans.MovieBean" %>
<%@ page import="java.util.Map" %>

<%
    // Get the selected movie ID
    String movieId = request.getParameter("movieId");

    // Retrieve the selected movie's information
    MovieBean movieBean = new MovieBean();
    Map<String, String> movie = movieBean.getMovieDetails(
            Integer.parseInt(movieId));
%>

<!DOCTYPE html>
<html>
<head>
    <title>Movie Details</title>

    <%-- Link the external CSS stylesheet --%>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h1>Movie Database - Selected Movie</h1>

<p>
    The following table displays the details of the movie
    selected from the database.
</p>

<table>
    <thead>
    <tr>
        <th>Movie ID</th>
        <th>Movie Title</th>
        <th>Release Year</th>
        <th>Genre</th>
        <th>Rating</th>
    </tr>
    </thead>

    <tbody>
    <tr>
        <td><%= movieId %></td>
        <td><%= movie.get("title") %></td>
        <td><%= movie.get("year") %></td>
        <td><%= movie.get("genre") %></td>
        <td><%= movie.get("rating") %>/10</td>
    </tr>
    </tbody>
</table>

<br>

<a href="index.jsp">Back to Movie List</a>

</body>
</html>
