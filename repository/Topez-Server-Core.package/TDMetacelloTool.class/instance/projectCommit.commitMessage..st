project api
projectCommit: registration commitMessage: messageString
  ^ self
    projectCommit: registration
    configCommit: registration configurationProjectSpec notNil
    gitCommit: (self hasGitRepository: registration)
    commitMessage: messageString