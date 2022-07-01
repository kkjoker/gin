-- +goose Up
-- +goose StatementBegin

CREATE TABLE `cooks` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '内部ID'
,   `name` varchar(255) NOT NULL COMMENT '料理名'
,	`category_id` int(11) NOT NULL COMMENT 'カテゴリID'
,	`created_at` datetime NULL COMMENT '作成日時'
,	`updated_at` datetime NULL COMMENT '更新日時'
,   `deleted_at` datetime NULL COMMENT '削除日時'
,    PRIMARY KEY(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 COMMENT='料理' DEFAULT CHARSET=utf8mb4;

CREATE TABLE `materials` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '内部ID'
,   `name` varchar(255) NOT NULL COMMENT '材料名'
,	`created_at` datetime NULL COMMENT '作成日時'
,	`updated_at` datetime NULL COMMENT '更新日時'
,   `deleted_at` datetime NULL COMMENT '削除日時'
,    PRIMARY KEY(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 COMMENT='材料' DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cook_materials` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '内部ID'
,   `cook_id` int(11) NOT NULL COMMENT '料理ID'
,   `material_id` int(11) NOT NULL COMMENT '材料ID'
,	`created_at` datetime NULL COMMENT '作成日時'
,	`updated_at` datetime NULL COMMENT '更新日時'
,   `deleted_at` datetime NULL COMMENT '削除日時'
,    PRIMARY KEY(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 COMMENT='料理材料' DEFAULT CHARSET=utf8mb4;

CREATE TABLE `categories` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '内部ID'
,   `name` varchar(255) NOT NULL COMMENT 'カテゴリ名'
,	`created_at` datetime NULL COMMENT '作成日時'
,	`updated_at` datetime NULL COMMENT '更新日時'
,   `deleted_at` datetime NULL COMMENT '削除日時'
,    PRIMARY KEY(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 COMMENT='カテゴリ' DEFAULT CHARSET=utf8mb4;

CREATE TABLE `cook_schedules` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '内部ID'
,   `cook_id` int(11) NOT NULL COMMENT '料理ID'
,	`target_date` date NOT NULL COMMENT '対象日時'
,	`created_at` datetime NULL COMMENT '作成日時'
,	`updated_at` datetime NULL COMMENT '更新日時'
,   `deleted_at` datetime NULL COMMENT '削除日時'
,    PRIMARY KEY(id)
) ENGINE=InnoDB AUTO_INCREMENT=1 COMMENT='料理スケジュール' DEFAULT CHARSET=utf8mb4;

-- +goose StatementEnd



-- +goose Down
-- +goose StatementBegin

DROP TABLE `cooks`;
DROP TABLE `materials`;
DROP TABLE `cook_materials`;
DROP TABLE `categories`;
DROP TABLE `cook_schedules`;

-- +goose StatementEnd
