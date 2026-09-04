CREATE UNIQUE INDEX uq_user_credentials_primary_active
ON app.user_credentials (user_id)
WHERE is_primary = TRUE
  AND revoked_at IS NULL;