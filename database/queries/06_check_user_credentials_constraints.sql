SELECT
    constraint_name,
    constraint_type
FROM information_schema.table_constraints
WHERE table_schema = 'app'
  AND table_name = 'user_credentials'
ORDER BY constraint_name;