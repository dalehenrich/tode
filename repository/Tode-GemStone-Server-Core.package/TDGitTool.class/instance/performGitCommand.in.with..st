as yet unclassified
performGitCommand: gitCommand in: gitRepoDirectory with: gitArgs
  ^ self
    performGitCommand: gitCommand
    in: gitRepoDirectory
    worktree: gitRepoDirectory fullName
    with: gitArgs