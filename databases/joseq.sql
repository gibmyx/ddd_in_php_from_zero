CREATE TABLE `courses`
(
    `id`       CHAR(36)     NOT NULL,
    `name`     VARCHAR(255) NOT NULL,
    `duration` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE `courses_counter`
(
    `id`               CHAR(36) NOT NULL,
    `total`            INT      NOT NULL,
    `existing_courses` JSON     NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

CREATE TABLE `domain_events`
(
    `id`           CHAR(36)     NOT NULL,
    `aggregate_id` CHAR(36)     NOT NULL,
    `name`         VARCHAR(255) NOT NULL,
    `body`         JSON         NOT NULL,
    `occurred_on`  timestamp    NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;

-- CREATE TABLE `steps` (
--   `id` CHAR(36) NOT NULL,
--   `type` tinyint(3) unsigned NOT NULL,
--   `lesson_id` CHAR(36) NOT NULL,
--   `title` VARCHAR(255) NOT NULL
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- CREATE TABLE `step_challenges` (
--   `id` CHAR(36) NOT NULL,
--   `statement` TEXT NOT NULL,
--   `duration` VARCHAR(255) NOT NULL,
--   PRIMARY KEY (`id`)
--   CONSTRAINT `fk_steps_challenges__step_id` FOREIGN KEY (`id`) REFERENCES `steps` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;