ALTER TABLE app.users
ADD COLUMN status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',

ADD COLUMN deleted_at TIMESTAMPTZ,

ADD CONSTRAINT chk_users_status
CHECK (
    status IN (
        'ACTIVE',
        'INACTIVE',
        'BLOCKED'
    )
);