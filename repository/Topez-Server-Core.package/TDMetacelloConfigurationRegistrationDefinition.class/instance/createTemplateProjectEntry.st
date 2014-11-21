project list
createTemplateProjectEntry
  ^ TDProjectSpecEntryDefinition new
    configuration: self projectName
      className: self configurationClassName
      version: self currentVersionString
      repository: self repositoryDescription
      loads: 'default';
    yourself