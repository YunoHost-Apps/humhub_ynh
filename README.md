# HumHub for YunoHost

[![Integration level](https://dash.yunohost.org/integration/humhub.svg)](https://dash.yunohost.org/appci/app/humhub) ![](https://ci-apps.yunohost.org/ci/badges/humhub.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/humhub.maintain.svg)  
[![Install humhub with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=humhub)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install HumHub quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
HumHub is an open source social network platform with a wide variety of use cases as social intranet, community or collaboration platform. HumHub consists of a core application, which can be extended through additional modules and adjusted to your needs by many configuration options. 

**Shipped version:** 1.8.1

## Screenshots

![](https://www.humhub.com/static/img/enterprise/app_small.png)

## Demo

* [Official demo](https://www.humhub.com/en)

## Configuration

How to configure this app: From an admin panel, a plain file with SSH, or any other way.

## Documentation

 * Official documentation: https://docs.humhub.org
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

 * Are LDAP and HTTP auth supported? **Yes**
 * Can the app be used by multiple users? **Yes**

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/humhub%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/humhub/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/humhub%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/humhub/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/humhub_ynh/issues
 * App website: https://www.humhub.org/
 * Upstream app repository: https://github.com/humhub/humhub
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/humhub_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/humhub_ynh/tree/testing --debug
or
sudo yunohost app upgrade humhub -u https://github.com/YunoHost-Apps/humhub_ynh/tree/testing --debug
```
