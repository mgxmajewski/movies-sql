-- List the names of all people who starred in a movie in which Kevin Bacon also starred.
SELECT name FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE title IN (SELECT title FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE name = 'Kevin Bacon' AND birth = 1958) AND name != "Kevin Bacon";