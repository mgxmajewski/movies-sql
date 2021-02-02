-- List all movies released in 2010 and their ratings, in descending order by rating. For movies with the same rating, order alphabetically by title.
SELECT ratings.rating, movies.title FROM movies 
JOIN ratings
ON ratings.movie_id = movies.id
WHERE year = 2010 ORDER 
BY ratings.rating DESC, movies.title;