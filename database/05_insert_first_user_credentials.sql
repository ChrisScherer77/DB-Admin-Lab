INSERT INTO app.user_credentials (
    user_id,
    provider,
    credential_type,
    identifier,
    secret_hash
)
VALUES (
    1,
    'local',
    'password',
    'csamaral@gmail.com',
    'HASH_DE_TESTE'
)
RETURNING *;