
ALTER TABLE app.user_credentials
ADD CONSTRAINT chk_user_credentials_password_hash
CHECK (
    credential_type <> 'password'
    OR secret_hash IS NOT NULL
);