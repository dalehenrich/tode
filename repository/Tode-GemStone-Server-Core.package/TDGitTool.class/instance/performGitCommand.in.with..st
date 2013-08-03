as yet unclassified
performGitCommand: gitCommand in: gitRepoDirectory with: gitArgs
  | commandBase command gitPath |
  gitPath := gitRepoDirectory fullName.
  commandBase := 'git --git-dir ' , gitPath , '/.git --work-tree ' , gitPath
    , ' ' , gitCommand , ' '.
  command := commandBase , gitArgs.
  ^ self performOnServer: command