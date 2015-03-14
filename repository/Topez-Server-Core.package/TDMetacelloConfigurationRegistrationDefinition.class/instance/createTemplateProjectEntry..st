project list
createTemplateProjectEntry: aTemplateProjectEntryOrNil
  ^ entry := TDProjectSpecEntryDefinition new
    configuration: self projectName
      className: self configurationClassName
      version: self currentVersionString
      repository: self repositoryDescription
      loads: (self templateProjectEntryLoads: self projectSpec);
    yourself