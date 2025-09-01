<?php

namespace humhub\auth\basic;

use humhub\components\Request;
use humhub\modules\user\models\forms\Login;
use humhub\modules\user\authclient\AuthClientHelpers;
use humhub\modules\user\services\AuthClientService;
use yii;

class Events
{
    /**
     * @param Event $event
     */
    public static function onBeforeRequest($event)
    {
        if (!Yii::$app->request instanceof Request) {
            return;
        }

        $request = Yii::$app->request;
        list($username, $password) = $request->getAuthCredentials();
        $identity = yii::$app->user->getIdentity();

        if ($username != null && $password != null && $identity == null) {
            $login = new Login;
            if ($login->load(['username' => $username, 'password' => $password], '') && $login->validate()) {
                if (version_compare(Yii::$app->version, '1.14', '>=')) {
                    $authClientService = new AuthClientService($login->authClient);
                    $user = $authClientService->getUser();
                    if ($user == null) {
                        $user = $authClientService->createUser($login->authClient);
                    }
                    if ($user != null) {
                        Yii::$app->user->login($user);
                    }
                } else {
                    $user = AuthClientHelpers::getUserByAuthClient($login->authClient);
                    if ($user == null) {
                        $user = AuthClientHelpers::createUser($login->authClient);
                    }
                    if ($user != null) {
                        Yii::$app->user->login($user);
                    }
                }
            }
        }

        // Yii::error(Yii::$app->request);
        if ("user/auth/login" === Yii::$app->request->getPathInfo()) {
            Yii::$app->getResponse()->redirect(['/user/password-recovery']);
        }
    }

}