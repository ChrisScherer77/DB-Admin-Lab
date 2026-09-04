INSERT INTO app.user_profiles (
    user_id,
    first_name,
    display_name
)
SELECT
    u.id,
    u.name,
    u.name
FROM app.users u
WHERE u.name IS NOT NULL
  AND NOT EXISTS (
      SELECT 1
      FROM app.user_profiles up
      WHERE up.user_id = u.id
  );