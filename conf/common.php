<?php

return [
    'components' => [
        'urlManager' => [
            'urlFormat' => 'path',
            'showScriptName' => false,
        ],
		'db' => [
            'dsn' => 'mysql:host=localhost;dbname=DBNAME_TO_CHANGE',
            'username' => 'DBUSER_TO_CHANGE',
            'password' => 'DBPASS_TO_CHANGE',
        ],
    ]
];