CREATE TABLE IF NOT EXISTS `user_email` (
    `id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user` INTEGER NOT NULL,
    `address` VARCHAR(150) NOT NULL UNIQUE,
    -- 1 Unverified
    -- 2 Verified
    -- 3 Default
    `status` TINYINT DEFAULT 1,
    `code` VARCHAR(150) UNIQUE,
    `updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX `by_user` ON `user_email` ( `user` );
