ALTER TABLE app.user_credentials
ADD CONSTRAINT chk_user_credentials_revoked_not_primary
CHECK (
    revoked_at IS NULL
    OR is_primary = FALSE
);