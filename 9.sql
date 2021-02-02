-- List the names of all people who starred in a movie released in 2004, ordered by birth year.
SELECT DISTINCT name FROM people
JOIN stars on people.id = stars.person_id
JOIN movies on stars.movie_id = movies.id
WHERE year = 2004
ORDER BY birth;