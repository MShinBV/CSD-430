
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  // Retrieve the submitted form information.
  String customerName = request.getParameter("customerName");
  String visitDate = request.getParameter("visitDate");
  String movieWatched = request.getParameter("movieWatched");
  String movieShowtime = request.getParameter("movieShowtime");
  String movieRating = request.getParameter("movieRating");
  String seatComfortRating = request.getParameter("seatComfortRating");
  String overallExperience = request.getParameter("overallExperience");
  String comments = request.getParameter("comments");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Theater Feedback Results</title>

  <!-- Link to the external CSS stylesheet -->
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h1>Theater Feedback Results</h1>

<p>
  Thank you for submitting your Theater experience feedback.
  Below is a summary of the information you provided.
</p>

<!-- Display the submitted information in an HTML table -->
<table border="1">
  <tr>
    <th>Field</th>
    <th>Submitted Information</th>
  </tr>

  <tr>
    <td>Customer Name</td>
    <td><%= customerName %></td>
  </tr>

  <tr>
    <td>Visit Date</td>
    <td><%= visitDate %></td>
  </tr>

  <tr>
    <td>Movie Watched</td>
    <td><%= movieWatched %></td>
  </tr>

  <tr>
    <td>Movie Showtime</td>
    <td><%= movieShowtime%></td>
  </tr>

  <tr>
    <td>Movie Rating</td>
    <td><%= movieRating %> / 5</td>
  </tr>

  <tr>
    <td>Seat Comfort Rating</td>
    <td><%= seatComfortRating %> / 5</td>
  </tr>

  <tr>
    <td>Overall Experience</td>
    <td><%= overallExperience %></td>
  </tr>

  <tr>
    <td>Additional Comments</td>
    <td><%= comments %></td>
  </tr>

</table>

<br>

<!-- Links user back to the feedback form -->
<a href="feedback.jsp">Return to Feedback Form</a>

</body>
</html>
