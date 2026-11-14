<%-- Miles Shinsato, 11/13/2026, CSD430-306J_2273_DD, Assignment 4.2 --%>

<%--This page uses JavaBeans to store information about my favorite movies. The movie information is displayed in an HTML table.--%>
<%-- Side note, its barely been a few weeks and I want to change my list of favorite movies already --%>


<%@ page import="java.util.ArrayList" %>
<%@ page import="beans.Movie" %>

<%
    // Creating a list to hold the movie records
    ArrayList<Movie> movies = new ArrayList<>();

    // Adding my favorite movies to the list
    movies.add(new Movie(
            "Parasite",
            "Dark Comedy / Thriller",
            2019,
            "10/10",
            "Non-stop twists and turns that just get increasingly bewildering"
    ));

    movies.add(new Movie(
            "Alien",
            "Sci-Fi / Horror",
            1979,
            "10/10",
            "Incredibly tense and atmospheric with great cinematography"
    ));

    movies.add(new Movie(
            "Street Fighter II: the Animated Movie",
            "Animated Action",
            1994,
            "10/10",
            "Animation is fluid with a remarkable English dub and soundtrack"
    ));

    movies.add(new Movie(
            "Howl's Moving Castle",
            "Animated Adventure",
            2004,
            "10/10",
            "Amazing soundtrack and such a spectacle to watch"
    ));

    movies.add(new Movie(
            "The Odyssey",
            "Adventure",
            2026,
            "9/10",
            "Filled with awe-inspiring visuals throughout with great practical effects"
    ));

    movies.add(new Movie(
            "Jingle All the Way",
            "Comedy",
            1996,
            "8/10",
            "Probably my favorite Christmas movie due to the sheer ridiculousness of it"
    ));
%>

<!-- Defining the document as HTML -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>My Favorite Movies</title>

    <!-- Linking the external CSS stylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<!-- Page heading -->
<h1>My Favorite Movies</h1>

<p>
    This page contains a collection of six movies,
    including their genres, release years, and ratings.
</p>

<h2>Movies I love</h2>

<p>
    Each entry covers a different movie that I absolutely love.
    I tried to include a variety of movie genres.
    Below are the movies with their genres, release years,
    personal ratings, and a brief highlight of why I enjoy them.
</p>

<!-- Table displaying the movie information -->
<table>

    <thead>
    <tr>
        <th>Movie Title</th>
        <th>Genre</th>
        <th>Release Year</th>
        <th>Rating</th>
        <th>Highlight</th>
    </tr>
    </thead>

    <tbody>

    <%-- Looping through the movie records --%>
    <% for (Movie movie : movies) { %>

    <tr>
        <td><%= movie.getTitle() %></td>
        <td><%= movie.getGenre() %></td>
        <td><%= movie.getYear() %></td>
        <td><%= movie.getRating() %></td>
        <td><%= movie.getHighlight() %></td>
    </tr>

    <% } %>

    </tbody>

</table>

</body>
</html>
