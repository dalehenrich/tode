project list
createTemplateProjectEntry: anOldTDRegistrationDefinitionOrNil
  entry := TDProjectSpecEntryDefinition new
    baseline: self projectName
      repository: self repositoryDescription
      loads:
        (self
            templateProjectEntryLoads: anOldTDRegistrationDefinitionOrNil
            projectSpec: self projectSpec);
    yourself.
  entry locked: self isLocked.
  ^ entry