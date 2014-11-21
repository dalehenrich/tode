project list
createTemplateProjectEntry
  ^ TDProjectSpecEntryDefinition new
    baseline: self projectName
      repository: self repositoryDescription
      loads: 'default';
    yourself