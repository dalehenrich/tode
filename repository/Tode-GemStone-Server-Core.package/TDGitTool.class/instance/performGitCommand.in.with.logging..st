as yet unclassified
performGitCommand: gitCommand in: gitRepoDirectory with: gitArgs logging: logging
  ^ self
    performGitCommand: gitCommand
    in: gitRepoDirectory
    worktree: gitRepoDirectory fullName
    with: gitArgs
    logging: logging