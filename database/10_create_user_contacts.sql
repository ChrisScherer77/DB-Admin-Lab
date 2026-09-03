CREATE TABLE app.user_contacts (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    user_id BIGINT NOT NULL,

    contact_type VARCHAR(30) NOT NULL,
    contact_value VARCHAR(255) NOT NULL,

    is_primary BOOLEAN NOT NULL DEFAULT FALSE,
    is_verified BOOLEAN NOT NULL DEFAULT FALSE,

    verified_at TIMESTAMPTZ,

    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    deleted_at TIMESTAMPTZ,

    CONSTRAINT fk_user_contacts_user
        FOREIGN KEY (user_id)
        REFERENCES app.users(id),

    CONSTRAINT chk_user_contacts_type
        CHECK (
            contact_type IN (
                'email',
                'phone'
            )
        ),

    CONSTRAINT chk_user_contacts_verified_at
        CHECK (
            (is_verified = FALSE AND verified_at IS NULL)
            OR
            (is_verified = TRUE AND verified_at IS NOT NULL)
        )
);