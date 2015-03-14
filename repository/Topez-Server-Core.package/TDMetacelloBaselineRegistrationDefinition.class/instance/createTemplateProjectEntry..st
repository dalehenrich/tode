project list
createTemplateProjectEntry: ignored
  ^ entry := TDProjectSpecEntryDefinition new
    baseline: self projectName
      repository: self repositoryDescription
      loads: (self templateProjectEntryLoads: self projectSpec);
    yourself