as yet unclassified
performGitCommand: gitCommand in: gitRepoDirectory with: gitArgs
  "unconditional cd to work-tree because of git pull problem with git prior to 1.7.7.2"

  | commandBase command gitPath |
  gitPath := gitRepoDirectory fullName.
  commandBase := 'cd ' , gitPath , '; git --git-dir ' , gitPath
    , '/.git --work-tree ' , gitPath , ' ' , gitCommand , ' '.
  command := commandBase , gitArgs.
  ^ self performOnServer: command