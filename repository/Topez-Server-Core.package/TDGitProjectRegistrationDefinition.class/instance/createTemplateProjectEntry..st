project list
createTemplateProjectEntry: ignored
  ^ entry := TDGitRepositoryEntryDefinition new
    projectName: self projectName;
    gitRepoDirectoryPath: self gitRepoDirectoryPath;
    yourself