ALTER TABLE app.user_credentials
ADD CONSTRAINT chk_user_credentials_provider_type
CHECK (
    (provider = 'local' AND credential_type = 'password')
    OR
    (
        provider IN ('google', 'microsoft', 'github', 'apple')
        AND credential_type = 'oauth'
    )
    OR
    (
        provider = 'passkey'
        AND credential_type = 'webauthn'
    )
);