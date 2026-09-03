INSERT INTO app.user_contacts (
    user_id,
    contact_type,
    contact_value,
    is_primary,
    is_verified,
    verified_at
)
SELECT
    id,
    'email',
    email,
    TRUE,
    TRUE,
    CURRENT_TIMESTAMP
FROM app.users
WHERE email IS NOT NULL;