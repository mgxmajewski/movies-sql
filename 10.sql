-- List the names of all people who have directed a movie that received a rating of at least 9.0.
SELECT name FROM people
JOIN directors ON directors.person_id = people.id
JOIN movies ON directors.movie_id = movies.id
JOIN ratings ON ratings.movie_id = movies.id
WHERE rating >= 9;