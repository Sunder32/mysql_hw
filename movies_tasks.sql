-- 1
SELECT COUNT(*) AS movies_count 
FROM movies
JOIN companies ON movies.company_id = companies.id
WHERE companies.title = 'Universal Pictures';


-- 2
SELECT COUNT(*) AS movies_count
FROM movies 
JOIN directors ON movies.director_id = directors.id
WHERE directors.full_name = 'Фрэнсис Форд Коппола';

-- 3
SELECT COUNT(*) AS movies_count
FROM movies
WHERE year >= YEAR(CURDATE()) - 20;


-- 4
SELECT DISTINCT genres.title AS genre
FROM movies
JOIN genres ON movies.genre_id = genres.id
JOIN directors ON movies.director_id = directors.id
WHERE directors.full_name = 'Стивен Спилберг';


-- 5
SELECT movies.title, genres.title AS genre, directors.full_name AS director
FROM movies
JOIN genres ON movies.genre_id = genres.id
JOIN directors ON movies.director_id = directors.id
ORDER BY movies.budget DESC
LIMIT 5;


-- 6
SELECT directors.full_name AS director, COUNT(*) AS movies_count
FROM movies
JOIN directors ON movies.director_id = directors.id
GROUP BY directors.id
ORDER BY movies_count DESC
LIMIT 1;


-- 7
SELECT movies.title, genres.title AS genre
FROM movies
JOIN genres ON movies.genre_id = genres.id
JOIN companies ON movies.company_id = companies.id
WHERE companies.id = (
  SELECT company_id
  FROM movies
  GROUP BY company_id
  ORDER BY SUM(budget) DESC
  LIMIT 1
);


-- 8
SELECT AVG(movies.budget) AS avg_budget
FROM movies
JOIN companies ON movies.company_id = companies.id
WHERE companies.title = 'Warner Bros.';


-- 9
SELECT 
    genres.title AS genre, 
    COUNT(*) AS movies_count,
    AVG(movies.budget) AS avg_budget
FROM movies
JOIN genres ON movies.genre_id = genres.id
GROUP BY genres.id;


-- 10
DELETE movies 
FROM movies
JOIN genres ON movies.genre_id = genres.id
WHERE movies.title = 'Дикие истории' 
  AND movies.year = 2014
  AND genres.title = 'комедия';
