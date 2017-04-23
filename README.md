# HumHub for YunoHost

- HumHub has to be postinstalled manually
- LDAP has to be setup manually (see below)
- LDAP auth does not work with users having multiple email addresses
- Users cannot be logged in automatically


LDAP settings:
* hostname : localhost
* port : 389
* encryption : none
* username : put something random
* password : put something random
* baseDn : ou=users,dc=yunohost,dc=org
* loginFilter : (uid=%s)
* userFilter : objectClass=mailAccount
* usernameAttribute : uid
* emailAttribute : mail

## HumHub
HumHub is a feature rich and highly flexible OpenSource Social Network Kit written in PHP.

It's perfect for individual:
- Social Intranets
- Enterprise Social Networks
- Private Social Networks

**More information:**    
https://yunohost.org/
https://www.humhub.org/
