INSERT INTO app.role_permissions (
    role_id,
    permission_id
)
SELECT
    r.id,
    p.id
FROM app.roles r
JOIN app.permissions p
    ON p.code IN (
        'users.read',
        'users.create',
        'users.update',
        'users.delete',

        'profiles.read',
        'profiles.create',
        'profiles.update',
        'profiles.delete',

        'contacts.read',
        'contacts.create',
        'contacts.update',
        'contacts.delete',

        'credentials.read',
        'credentials.create',
        'credentials.update',
        'credentials.revoke',

        'sessions.read',
        'sessions.revoke',

        'roles.read',
        'roles.create',
        'roles.update',
        'roles.delete',

        'permissions.read',
        'permissions.create',
        'permissions.update',
        'permissions.delete',

        'audit.read'
    )
WHERE r.name = 'ADMIN'
ON CONFLICT DO NOTHING;