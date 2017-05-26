CREATE TABLE IF NOT EXISTS `user_email` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `user` INTEGER NOT NULL,
    `address` VARCHAR(150) NOT NULL,
    -- 1 Unverified
    -- 2 Verified
    -- 3 Default
    `status` TINYINT DEFAULT 1,
    `code` VARCHAR(150),
    `updated` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    PRIMARY KEY (
        `id`,
        `user`
    )
)
    PARTITION BY KEY(`user`)
    PARTITIONS 50;