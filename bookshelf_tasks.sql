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

-- 8


SELECT @book_id := id FROM books WHERE title = 'Божественная комедия';
SELECT @friend_id := id FROM friends WHERE name = 'Иван Иваныч';
UPDATE books SET friends_id = @friend_id WHERE id = @book_id;

-- 9

INSERT INTO books (title, year, shelves_id)
VALUES ('Краткие ответы на большие вопросы', 2020, (SELECT id FROM shelves WHERE title = 'кабинет'));

INSERT INTO authors (name)
SELECT 'Стивен Хокинг'
WHERE NOT EXISTS (SELECT * FROM authors WHERE name = 'Стивен Хокинг');


SET @author_id = (
  SELECT id FROM authors WHERE name = 'Стивен Хокинг'
);


INSERT INTO authors_books (books_id, authors_id)
VALUES ((SELECT id FROM books WHERE title = 'Краткие ответы на большие вопросы'), @author_id);








