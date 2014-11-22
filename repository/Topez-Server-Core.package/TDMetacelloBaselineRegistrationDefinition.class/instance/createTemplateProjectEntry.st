project list
createTemplateProjectEntry
  ^ entry := TDProjectSpecEntryDefinition new
    baseline: self projectName
      repository: self repositoryDescription
      loads: 'default';
    yourself