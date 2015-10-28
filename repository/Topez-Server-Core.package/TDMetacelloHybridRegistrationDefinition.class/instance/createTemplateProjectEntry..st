project list
createTemplateProjectEntry: anOldTDRegistrationDefinitionOrNil
  | newEntry |
  newEntry := TDProjectSpecEntryDefinition new
    configuration: self projectName
      className: self configurationClassName
      version: self currentVersionString
      repository: self repositoryDescription
      loads:
        (self
          templateProjectEntryLoads: anOldTDRegistrationDefinitionOrNil
          projectSpec: self projectSpec);
    locked: anOldTDRegistrationDefinitionOrNil isLocked;
    yourself.
  entry := newEntry.
  ^ entry