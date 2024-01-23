UPDATE books
SET name = 'Harry Potter e o Prisioneiro de Azkaban'
WHERE name = 'Harry Potter'
RETURNING *;

UPDATE books
SET "authorId" = (SELECT id FROM authors WHERE name = 'Eiichiro Oda')
WHERE name IN ('One Piece - Volume 1', 'One Piece - Volume 2')
RETURNING *;

