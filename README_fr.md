# HumHub pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/humhub.svg)](https://dash.yunohost.org/appci/app/humhub) ![](https://ci-apps.yunohost.org/ci/badges/humhub.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/humhub.maintain.svg)  
[![Installer Humhub avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=humhub)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer HumHub rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
HumHub est une plate-forme de réseau social open source avec une grande variété de cas d'utilisation en tant qu'intranet social, plate-forme de communauté ou de collaboration. HumHub se compose d'une application principale, qui peut être étendue grâce à des modules supplémentaires et ajustée à vos besoins par de nombreuses options de configuration.

**Version incluse :** 1.8.2

## Captures d'écran

![](https://www.humhub.com/static/img/enterprise/app_small.png)

## Démo

* [Démo officielle](https://www.humhub.com/en)

## Configuration

Comment configurer cette application : via le panneau d'administration.

## Documentation

 * Documentation officielle : https://docs.humhub.org
 * Documentation YunoHost : Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **Oui**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **Oui**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/humhub%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/humhub/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/humhub%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/humhub/)

## Limitations

* Limitations connues.

## Informations additionnelles

* Autres informations que vous souhaitez ajouter sur cette application.

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/humhub_ynh/issues
 * Site de l'application : https://www.humhub.org/
 * Dépôt de l'application principale : https://github.com/humhub/humhub
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/humhub_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/humhub_ynh/tree/testing --debug
ou
sudo yunohost app upgrade humhub -u https://github.com/YunoHost-Apps/humhub_ynh/tree/testing --debug
```
