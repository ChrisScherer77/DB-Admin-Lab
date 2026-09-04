INSERT INTO app.permissions (
    code,
    name,
    description
)
VALUES
    ('users.read', 'View users', 'View user accounts'),
    ('users.create', 'Create users', 'Create new user accounts'),
    ('users.update', 'Update users', 'Update user accounts'),
    ('users.delete', 'Delete users', 'Delete user accounts'),

    ('profiles.read', 'View profiles', 'View user profiles'),
    ('profiles.create', 'Create profiles', 'Create user profiles'),
    ('profiles.update', 'Update profiles', 'Update user profiles'),
    ('profiles.delete', 'Delete profiles', 'Delete user profiles'),

    ('contacts.read', 'View contacts', 'View user contacts'),
    ('contacts.create', 'Create contacts', 'Create user contacts'),
    ('contacts.update', 'Update contacts', 'Update user contacts'),
    ('contacts.delete', 'Delete contacts', 'Delete user contacts'),

    ('credentials.read', 'View credentials', 'View user credentials'),
    ('credentials.create', 'Create credentials', 'Create user credentials'),
    ('credentials.update', 'Update credentials', 'Update user credentials'),
    ('credentials.revoke', 'Revoke credentials', 'Revoke user credentials'),

    ('sessions.read', 'View sessions', 'View user sessions'),
    ('sessions.revoke', 'Revoke sessions', 'Revoke user sessions'),

    ('roles.read', 'View roles', 'View system roles'),
    ('roles.create', 'Create roles', 'Create system roles'),
    ('roles.update', 'Update roles', 'Update system roles'),
    ('roles.delete', 'Delete roles', 'Delete system roles'),

    ('permissions.read', 'View permissions', 'View system permissions'),
    ('permissions.create', 'Create permissions', 'Create system permissions'),
    ('permissions.update', 'Update permissions', 'Update system permissions'),
    ('permissions.delete', 'Delete permissions', 'Delete system permissions'),

    ('audit.read', 'View audit logs', 'View system audit logs')
ON CONFLICT (code) DO NOTHING;