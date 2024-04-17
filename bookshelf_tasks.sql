-- 1
SELECT authors.name, COUNT(authors_books.authors_id) AS book_count
FROM authors
JOIN authors_books ON authors.id = authors_books.authors_id
GROUP BY authors.name
ORDER BY book_count DESC
LIMIT 1;

-- 2
SELECT title, year
FROM books
WHERE year IS NOT NULL
ORDER BY year
LIMIT 5;

-- 3
SELECT COUNT(*)
FROM books
WHERE shelves_id = (SELECT id FROM shelves WHERE title = 'полка в кабинете');

-- 4

SELECT b.title, a.name AS author_name, b.year
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
JOIN shelves s ON b.shelves_id = s.id
WHERE s.title ='Полка в спальне';

-- 5
SELECT b.title, b.year
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
WHERE a.name = 'Лев Толстой';

-- 6

SELECT b.title
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
WHERE a.name LIKE 'А%';


-- 7 

SELECT b.title, a.name AS author_name
FROM books b
JOIN authors_books ab ON b.id = ab.books_id
JOIN authors a ON ab.authors_id = a.id
JOIN shelves s ON b.shelves_id = s.id
WHERE s.title LIKE '%верхняя%' OR s.title LIKE '%нижняя%';




