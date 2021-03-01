BEGIN;

DELETE FROM setting WHERE
(`name` = 'auth.anonymousRegistration') OR
(`name` = 'auth.allowGuestAccess') OR
(`name` = 'auth.internalUsersCanInvite');

INSERT INTO setting (`name`, `value`, `module_id`) VALUES
('enabled', '1', 'ldap'), 
('hostname', 'localhost', 'ldap'),
('port', '389', 'ldap'),
('encryption', '', 'ldap'), 
('username', '', 'ldap'), 
('password', '', 'ldap'), 
('baseDn', 'ou=users,dc=yunohost,dc=org', 'ldap'), 
('loginFilter', '(uid=%s)', 'ldap'),
('userFilter', 'objectClass=mailAccount', 'ldap'),
('emailAttribute', 'mail', 'ldap'), 
('usernameAttribute', 'uid', 'ldap'),
('idAttribute', 'uid', 'ldap'),
('refreshUsers', '1', 'ldap'),
('auth.anonymousRegistration', '0', 'user'),
('auth.allowGuestAccess', '0', 'user'),
('auth.internalUsersCanInvite', '0', 'user');

UPDATE `user` SET `auth_mode` = 'ldap' WHERE `user`.`username` = '__ADMIN__';

COMMIT;
