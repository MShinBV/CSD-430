<%-- Miles Shinsato, 11/08/2026, CSD430-306J_2273_DD, Assignment 3.2 --%>

<%-- This is a page that uses JSP Scriplets to showcase a few rows of data based on my favorite movies
There is an external CSS file that helps modify the look of the page and the table to show my data --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Theater Feedback Form</title>

    <!-- Link to the external CSS stylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<h1>Theater Experience Feedback</h1>

<p>
    Please complete the following form to share your
    experience with a recent Theater visit.
</p>

<!-- Submits the form information to feedbackResults.jsp -->
<form action="feedbackResults.jsp" method="post">

    <!-- Customer's name -->
    <label for="customerName">Customer Name:</label>
    <input type="text" id="customerName"
           name="customerName" required>

    <br><br>

    <!-- Date of the Theater visit with the date format -->
    <label for="visitDate">Visit Date:</label>
    <input type="date" id="visitDate"
           name="visitDate" required>

    <br><br>

    <!-- Movie watched -->
    <label for="movieWatched">Movie Watched:</label>
    <input type="text" id="movieWatched"
           name="movieWatched" required>

    <br><br>

    <!-- Showtime of the movie with the time format -->
    <label for="movieShowtime">Showtime of Movie:</label>
    <input type="time" id="movieShowtime"
           name="movieShowtime" required>

    <br><br>


    <!-- Rate the movie watched with a dropdown-->
    <label for="movieRating">Movie Rating:</label>
    <select id="movieRating" name="movieRating" required>
        <option value="">Select a Rating</option>
        <option value="1">1 - Unwatchable</option>
        <option value="2">2 - Bad</option>
        <option value="3">3 - Boring</option>
        <option value="4">4 - Uninspired</option>
        <option value="5">5 - Mediocre</option>
        <option value="6">6 - Good</option>
        <option value="7">7 - Great</option>
        <option value="8">8 - Excellent</option>
        <option value="9">9 - Amazing</option>
        <option value="10">10 - Masterful</option>
    </select>

    <br><br>

    <!-- Seat comfort rating using radio buttons -->
    <p>Seat Comfort Rating:</p>
    <input type="radio" id="seat1" name="seatComfortRating" value="1" required>
    <label for="seat1">Bad</label>

    <input type="radio" id="seat2" name="seatComfortRating" value="2">
    <label for="seat2">Uncomfortable</label>

    <input type="radio" id="seat3" name="seatComfortRating" value="3">
    <label for="seat3">Okay</label>

    <input type="radio" id="seat4" name="seatComfortRating" value="4">
    <label for="seat4">Cozy</label>

    <input type="radio" id="seat5" name="seatComfortRating" value="5">
    <label for="seat5">Comfortable</label>

    <br><br>

    <!-- Customer's overall experience rating -->
    <p>Overall Experience:</p>

    <input type="radio" id="experienceYes" name="overallExperience" value="Satisfied" required>
    <label for="experienceYes">Satisfied</label>

    <input type="radio" id="experienceNo" name="overallExperience" value="Unsatisfied">
    <label for="experienceNo">Unsatisfied</label>

    <input type="radio" id="experienceNeutral" name="overallExperience" value="Neutral">
    <label for="experienceNeutral">Unsatisfied</label>

    <br><br>

    <!-- Additional comments about theater-->
    <label for="comments">Additional Comments About Theater:</label>
    <br>
    <textarea id="comments" name="comments"
              rows="5" cols="40"></textarea>

    <br><br>

    <!-- Submit the completed form -->
    <input type="submit" value="Submit Feedback">

</form>

</body>
</html>
