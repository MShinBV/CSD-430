// Miles Shinsato, 11/22/2026, CSD430-306J_2273_DD, Assignment 5.3 & 6.3

// MovieBean.java is meant to handle the database connections to the jsp files

package beans;

// Import SQL classes for connecting to the database and retrieving data
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;

// Import classes for storing the movie IDs and details
import java.util.ArrayList;
import java.util.List;
import java.util.HashMap;
import java.util.Map;

public class MovieBean {

    // Database connection information
    private final String databaseURL = "jdbc:mysql://localhost:3306/CSD430";
    private final String databaseUser = "student1";
    private final String databasePassword = "pass";

    // Connect to the MySQL database
    public Connection getConnection() throws Exception {

        // Load the MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Use the database information to establish the connection
        return DriverManager.getConnection(
                databaseURL, databaseUser, databasePassword);
    }

    // Get all movie IDs from the database for the dropdown menu
    public List<Integer> getMovieIds() throws Exception {

        // Create a list to hold the movie IDs
        List<Integer> movieIds = new ArrayList<>();

        // SQL query to get the movie IDs
        String sql = "SELECT id FROM miles_movies_data";

        // Connect to the database and run the query
        try (Connection connection = getConnection();
             Statement statement = connection.createStatement();
             ResultSet results = statement.executeQuery(sql)) {

            // Go through the results and add each ID to the list
            while (results.next()) {
                movieIds.add(results.getInt("id"));
            }
        }

        // Return the list of movie IDs
        return movieIds;
    }

    // Get the details of a movie using its ID
    public Map<String, String> getMovieDetails(int movieId) throws Exception {

        // Create a map to hold the selected movie's details
        Map<String, String> movie = new HashMap<>();

        // SQL query to find the movie that matches the selected ID
        String sql = "SELECT movie_title, release_year, genre, rating " +
                "FROM miles_movies_data WHERE id = ?";

        // Connect to the database and prepare the query
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            // Set the movie ID in the query
            statement.setInt(1, movieId);

            // Run the query and get the matching record
            try (ResultSet results = statement.executeQuery()) {

                // Check if a matching movie was found
                if (results.next()) {

                    // Add the movie details to the map
                    movie.put("title", results.getString("movie_title"));
                    movie.put("year", results.getString("release_year"));
                    movie.put("genre", results.getString("genre"));
                    movie.put("rating", results.getString("rating"));
                }
            }
        }

        // Return the movie details
        return movie;
    }
}
