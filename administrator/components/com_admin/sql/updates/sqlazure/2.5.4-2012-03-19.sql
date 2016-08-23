ALTER TABLE [#__languages] ADD  [access] INTEGER CONSTRAINT DF_languages_access DEFAULT '' NOT NULL

CREATE UNIQUE INDEX idx_access ON [#__languages] (access);

UPDATE [#__extensions] SET enabled = '1' WHERE protected = '1' AND [type] <> 'plugin';
