
package beans;

// Allows this class to be serialized
import java.io.Serializable;

// class Movie to hold the information for each movie
public class Movie implements Serializable {

    // Used when saving or restoring this object
    private static final long serialVersionUID = 1L;

    // Movie info
    private String title;
    private String genre;
    private int year;
    private String rating;
    private String highlight;

    // Empty constructor required for a JavaBean
    public Movie() {
    }

    // Constructor for creating a movie with its info in a specific order
    public Movie(String title, String genre, int year, String rating, String highlight) {
        this.title = title;
        this.genre = genre;
        this.year = year;
        this.rating = rating;
        this.highlight = highlight;
    }

    // Returns movie title
    public String getTitle() {
        return title;
    }

    // Updates  movie title
    public void setTitle(String title) {
        this.title = title;
    }

    // Returns movie genre
    public String getGenre() {
        return genre;
    }

    // Updates movie genre
    public void setGenre(String genre) {
        this.genre = genre;
    }

    // Returns movie release year
    public int getYear() {
        return year;
    }

    // Updates movie release year
    public void setYear(int year) {
        this.year = year;
    }

    // Returns movie rating
    public String getRating() {
        return rating;
    }

    // Updates movie rating
    public void setRating(String rating) {
        this.rating = rating;
    }

    // Returns movie highlight
    public String getHighlight() {
        return highlight;
    }

    // Updates movie highlight
    public void setHighlight(String highlight) {
        this.highlight = highlight;
    }
}
