project list
createTemplateProjectEntry: anOldTDRegistrationDefinitionOrNil
  entry := TDProjectSpecEntryDefinition new
    configuration: self projectName
      className: self configurationClassName
      version: self currentVersionString
      repository: self repositoryDescription
      loads:
        (self
          templateProjectEntryLoads: anOldTDRegistrationDefinitionOrNil
          projectSpec: self projectSpec);
    yourself.
  entry locked: self isLocked.
  ^ entry