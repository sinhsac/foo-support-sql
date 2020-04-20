--liquibase formatted sql

--changeset sacle:1
CREATE TABLE `my_table`
(
    `id`         INT          NOT NULL AUTO_INCREMENT,
    `test_name`  VARCHAR(100) NOT NULL,
    `created_at` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  CHARSET = utf8mb4
  COLLATE utf8mb4_unicode_ci COMMENT = 'This is my first table';
--comment: create new table with name my_table use for test
--rollback DROP TABLE `my_table`;