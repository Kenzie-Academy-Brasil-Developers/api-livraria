SELECT * FROM books;

SELECT books.* FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON books_categories."categoryId" = categories."id"
WHERE categories."name" = 'Fantasia';

SELECT
  b."id" AS book_id,
  b."name" AS book_name,
  b."pages",
  b."createdAt" AS book_created_at,
  b."updatedAt" AS book_updated_at,
  c."id" AS category_id,
  c."name" AS category_name
FROM books AS b
JOIN books_categories AS bc ON b.id = bc."bookId"
JOIN categories AS c ON bc."categoryId" = c.id;

SELECT
    b."id" AS book_id,
    b."name" AS book_name,
    b."pages" AS book_pages,
    b."createdAt" AS book_createdAt,
    b."updatedAt" AS book_updatedAt,
    a."id" AS author_id,
    a."name" AS author_name,
    a."bio" AS author_bio
FROM books AS b
JOIN authors AS a ON b."authorId" = a.id
WHERE b."name" = 'Harry Potter';