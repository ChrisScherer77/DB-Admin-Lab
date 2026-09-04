CREATE UNIQUE INDEX uq_user_contacts_active_email
ON app.user_contacts (contact_value)
WHERE contact_type = 'email'
  AND deleted_at IS NULL;