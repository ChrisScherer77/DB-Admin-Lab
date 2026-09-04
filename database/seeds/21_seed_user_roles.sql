INSERT INTO app.user_roles (
    user_id,
    role_id
)
SELECT
    u.id,
    r.id
FROM app.users u
JOIN app.roles r
    ON r.name = 'PROFESSOR'
WHERE u.id = 1
ON CONFLICT DO NOTHING;