SELECT
    column_name,
    data_type,
    is_nullable
FROM information_schema.columns
WHERE table_schema = 'app'
  AND table_name = 'user_credentials'
ORDER BY ordinal_position;
