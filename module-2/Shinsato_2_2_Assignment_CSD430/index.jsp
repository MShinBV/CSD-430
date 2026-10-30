<%-- Miles Shinsato, 10/30/2026, CSD430-306J_2273_DD, Assignment 2.2 --%>

<%-- This is a page that uses JSP Scriplets to showcase a few rows of data based on my favorite movies
There is an external CSS file that helps modify the look of the page and the table to show my data --%>

<%
    // Storing movie information in parallel arrays

    //  Movie Titles
    String[] titles = {
            "Parasite",
            "Alien",
            "Street Fighter II: the Animated Movie",
            "Howl's Moving Castle",
            "The Odyssey",
            "Jingle All the Way",
    };

    // Genre for each movie
    String[] genres = {
            "Dark Comedy / Thriller",
            "Sci-Fi / Horror",
            "Animated Action",
            "Animated Adventure",
            "Adventure",
            "Comedy"
    };

    // Each movie's release year
    int[] years = {2019, 1979, 1994, 2004, 2026, 1996};

    // My personal rating for each movie
    String[] ratings = {
            "10/10", "10/10", "10/10", "10/10", "9/10", "8/10"
    };

    // A highlight I have for each movie
    String[] highlight = {
            "Non-stop twists and turns that just get increasingly bewildering",
            "Incredibly tense and atmospheric with great cinematography",
            "Animation is fluid with a remarkable English dub and soundtrack",
            "Amazing soundtrack and such a spectacle to watch",
            "Filled with awe-inspiring visuals throughout with great practical effects",
            "Probably my favorite Christmas movie due to the sheer ridiculousness of it"

    };
%>

<!-- Defining the document as HTML and setting its language -->
<!DOCTYPE html>
<html lang="en">

<!-- Setting page information and settings -->
<head>
    <meta charset="UTF-8">
    <title>My Favorite Movies</title>

    <!-- Linking to the external CSS stylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>

<!-- Starting the visible content for the page -->
<body>

<!-- Heading and body of text before getting to the table -->
<h1>My Favorite Movies</h1>

<p>
    This page contains a collection of five movies,
    including their genres, release years, and ratings.
</p>

<h2>Movies I love</h2>

<p>
    Each line covers a different movie that I absolutely love. I tried to pull a different genre of movie for each entry.
    <br>
    Below I have each movie with their genre, release year, my personal rating, and a brief highlight of why I love it.
</p>


<!-- Creating the table for the movie information -->
<table>

    <!-- Table heading -->
    <thead>

    <!-- Creating row heading for the table  -->
    <tr>
        <th>Movie Title</th>
        <th>Genre</th>
        <th>Release Year</th>
        <th>Rating</th>
        <th>Highlight</th>
    </tr>
    </thead>

    <!-- Contains movie records -->
    <tbody>

    <%-- Looping through the movie records, it will repeat the table row for each movie --%>
    <% for (int i = 0; i < titles.length; i++) { %>
    <tr>

        <%-- Calling to the titles, genres, years, ratings, and highlights --%>
        <td><%= titles[i] %></td>
        <td><%= genres[i] %></td>
        <td><%= years[i] %></td>
        <td><%= ratings[i] %></td>
        <td><%= highlight[i] %></td>
    </tr>

    <!-- Ending the loop -->
    <% } %>
    </tbody>

<!-- Closing the table -->
</table>

</body>
</html>
