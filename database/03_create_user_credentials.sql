CREATE TABLE app.user_credentials (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    user_id BIGINT NOT NULL,

    provider VARCHAR(50) NOT NULL,
    credential_type VARCHAR(30) NOT NULL,
    identifier VARCHAR(255) NOT NULL,

    secret_hash TEXT,

    is_verified BOOLEAN NOT NULL DEFAULT FALSE,
    is_primary BOOLEAN NOT NULL DEFAULT FALSE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_used_at TIMESTAMPTZ,
    revoked_at TIMESTAMPTZ,

    CONSTRAINT fk_user_credentials_user
        FOREIGN KEY (user_id)
        REFERENCES app.users(id),

    CONSTRAINT uq_user_credentials_provider_identifier
        UNIQUE (provider, identifier),

    CONSTRAINT chk_user_credentials_provider
        CHECK (
            provider IN (
                'local',
                'google',
                'microsoft',
                'github',
                'apple',
                'passkey'
            )
        ),

    CONSTRAINT chk_user_credentials_type
        CHECK (
            credential_type IN (
                'password',
                'oauth',
                'webauthn'
            )
        )
);