INSERT INTO app.users (
    name,
    email
)
VALUES (
    'Chris Scherer',
    'csamaral@gmail.com'
)
RETURNING *;