accessing
gitRootDirectory
  | gitRootPath |
  gitRootPath := MetacelloPlatform current
    gitRootDirectoryPath: self gitRepoDirectory fullName.
  ^ ServerFileDirectory on: gitRootPath