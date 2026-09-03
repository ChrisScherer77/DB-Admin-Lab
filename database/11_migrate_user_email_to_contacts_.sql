INSERT INTO app.user_contacts (
    user_id,
    contact_type,
    contact_value,
    is_primary,
    is_verified,
    verified_at
)
SELECT
    u.id,
    'email',
    u.email,
    TRUE,
    TRUE,
    CURRENT_TIMESTAMP
FROM app.users u
WHERE u.email IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM app.user_contacts uc
      WHERE uc.user_id = u.id
        AND uc.contact_type = 'email'
        AND uc.contact_value = u.email
  );