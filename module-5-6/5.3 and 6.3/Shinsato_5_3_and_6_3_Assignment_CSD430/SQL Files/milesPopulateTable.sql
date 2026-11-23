-- Miles Shinsato, 11/20/2026, CSD430-306J, Assignment 5.2 & 6.2
-- SQL to populate the miles_movies_data

-- Selecting the CSD430 database
USE CSD430;

    -- Inserting the movie data into the miles_movies_data table
    INSERT INTO miles_movies_data
    -- Arranging the columns for the miles_movies_data table
    (movie_title, release_year, genre, rating)
    VALUES
        ('Parasite', 2019, 'Thriller',  10.0),
        ('Alien', 1979, 'Horror', 10.0),
        ('The Odyssey', 2026, 'Adventure', 9.0),
        ('Jingle All the Way', 1996, 'Comedy', 9.0),
        ('Spider-Man 2', 2004, 'Action', 10.0),
        ('Oldboy', 2003, 'Thriller', 10.0),
        ('You Can See Everything', 2026, 'Documentary', 10.0),
        ('Wildwood', 2026, 'Fantasy', 10.0),
        ('The Batman', 2022, 'Crime', 9.0),
        ('Howl''s Moving Castle', 2004, 'Fantasy', 9.0);


