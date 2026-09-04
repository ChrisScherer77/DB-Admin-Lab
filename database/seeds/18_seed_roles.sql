INSERT INTO app.roles (
    name,
    description
)
VALUES
    ('ADMIN', 'Full system administrator'),
    ('MANAGER', 'System manager'),
    ('PROFESSOR', 'Professor or instructor'),
    ('STUDENT', 'Student user'),
    ('USER', 'Standard system user')
ON CONFLICT (name) DO NOTHING;