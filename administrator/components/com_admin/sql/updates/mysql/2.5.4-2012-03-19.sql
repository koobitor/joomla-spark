ALTER TABLE `#__languages` ADD COLUMN `access` integer unsigned NOT NULL default 0 AFTER `published`;

ALTER TABLE `#__languages` ADD INDEX `idx_access` (`access`);

UPDATE `#__extensions` SET `enabled` = '1' WHERE `protected` = '1' AND `type` <> 'plugin';
