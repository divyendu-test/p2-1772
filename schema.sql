CREATE TABLE `ahoy_events` (
  `id` binary(16) NOT NULL,
  `visit_id` binary(16) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ahoy_events_on_id` (`id`) USING BTREE,
  KEY `index_ahoy_events_on_visit_id` (`visit_id`) USING BTREE,
  KEY `index_ahoy_events_on_type` (`type`(191)) USING BTREE,
  KEY `index_ahoy_events_on_user_id` (`user_id`) USING BTREE,
  KEY `index_ahoy_events_on_time` (`time`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;