-- List the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated.
SELECT title FROM movies
JOIN people ON stars.movie_id = movies.id
JOIN stars ON stars.person_id = people.id
JOIN ratings ON ratings.movie_id = movies.id
WHERE name = 'Chadwick Boseman' ORDER BY rating DESC LIMIT 5;