project api
projectCommit: registration commitMessage: messageString
  ^ self
    projectCommit: registration
    gitCommit: (self hasGitRepository: registration)
    commitMessage: messageString