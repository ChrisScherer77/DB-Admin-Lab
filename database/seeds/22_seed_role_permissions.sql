-- ============================================================
-- Seed: Role permissions
-- ============================================================

-- MANAGER
INSERT INTO app.role_permissions (role_id, permission_id)
SELECT
    r.id,
    p.id
FROM app.roles r
JOIN app.permissions p
    ON p.code IN (
        'users.read',
        'users.create',
        'users.update',

        'profiles.read',
        'profiles.create',
        'profiles.update',

        'contacts.read',
        'contacts.create',
        'contacts.update',

        'credentials.read',
        'credentials.revoke',

        'sessions.read',
        'sessions.revoke',

        'roles.read'
    )
WHERE r.name = 'MANAGER'
ON CONFLICT DO NOTHING;


-- PROFESSOR
INSERT INTO app.role_permissions (role_id, permission_id)
SELECT
    r.id,
    p.id
FROM app.roles r
JOIN app.permissions p
    ON p.code IN (
        'users.read',

        'profiles.read',
        'profiles.update',

        'contacts.read',

        'credentials.read',

        'sessions.read'
    )
WHERE r.name = 'PROFESSOR'
ON CONFLICT DO NOTHING;


-- STUDENT
INSERT INTO app.role_permissions (role_id, permission_id)
SELECT
    r.id,
    p.id
FROM app.roles r
JOIN app.permissions p
    ON p.code IN (
        'profiles.read',
        'profiles.update',

        'contacts.read',
        'contacts.update'
    )
WHERE r.name = 'STUDENT'
ON CONFLICT DO NOTHING;


-- USER
INSERT INTO app.role_permissions (role_id, permission_id)
SELECT
    r.id,
    p.id
FROM app.roles r
JOIN app.permissions p
    ON p.code IN (
        'profiles.read',
        'profiles.update',

        'contacts.read',
        'contacts.update',

        'credentials.read',
        'credentials.update',

        'sessions.read',
        'sessions.revoke'
    )
WHERE r.name = 'USER'
ON CONFLICT DO NOTHING;