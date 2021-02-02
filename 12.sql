-- List the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.
SELECT title FROM movies
JOIN people ON stars.movie_id = movies.id
JOIN stars ON stars.person_id = people.id
WHERE name = 'Johnny Depp'
INTERSECT
SELECT title FROM movies
JOIN people ON stars.movie_id = movies.id
JOIN stars ON stars.person_id = people.id
WHERE name = 'Helena Bonham Carter';