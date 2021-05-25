<?php

return [
    'components' => [
        'db' => [
            'dsn' => 'mysql:host=localhost;dbname=__DB_NAME__',
            'username' => '__DB_USER__',
            'password' => '__DB_PWD__',
        ],
    ],
    'modules' => [
        'user' => [
            'minimumUsernameLength' => 1
        ]
    ]
];
