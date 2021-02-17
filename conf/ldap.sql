REPLACE INTO setting (`name`, `value`, `module_id`) VALUES
('auth.ldap.enabled', '1', 'user'), 
('auth.ldap.hostname', 'localhost', 'user'),
('auth.ldap.port', '389', 'user'),
('auth.ldap.encryption', '', 'user'), 
('auth.ldap.username', '', 'user'), 
('auth.ldap.password', '', 'user'), 
('auth.ldap.baseDn', 'ou=users,dc=yunohost,dc=org', 'user'), 
('auth.ldap.loginFilter', '(uid=%s)', 'user'),
('auth.ldap.userFilter', 'objectClass=mailAccount', 'user'),
('auth.ldap.emailAttribute', 'mail', 'user'), 
('auth.ldap.usernameAttribute', 'uid', 'user'),
('auth.ldap.refreshUsers', '1', 'user'),
('auth.anonymousRegistration', '0', 'user'),
('auth.allowGuestAccess', '0', 'user'),
('auth.internalUsersCanInvite', '0', 'user');

UPDATE `user` SET `auth_mode` = 'ldap' WHERE `user`.`username` = '__ADMIN__';
