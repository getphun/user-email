<?php
/**
 * user-email config file
 * @package user-email
 * @version 0.0.1
 * @upgrade true
 */

return [
    '__name' => 'user-email',
    '__version' => '0.0.1',
    '__git' => 'https://github.com/getphun/user-email',
    '__files' => [
        'modules/user-email' => [
            'install',
            'remove',
            'update'
        ]
    ],
    '__dependencies' => [
        'user'
    ],
    '_services' => [],
    '_autoload' => [
        'classes' => [
            'UserEmail\\Model\\UserEmail' => 'modules/user-email/model/UserEmail.php'
        ],
        'files' => []
    ]
];