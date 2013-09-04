as yet unclassified
performGitCommand: gitCommand in: gitRepoDirectory worktree: workTreePath with: gitArgs logging: logging
  "unconditional cd to work-tree because of git pull problem with git prior to 1.7.7.2"

  | commandBase command gitPath |
  gitPath := gitRepoDirectory fullName.
  commandBase := 'cd ' , workTreePath , '; git --git-dir ' , gitPath
    , '/.git --work-tree ' , workTreePath , ' ' , gitCommand , ' '.
  command := commandBase , gitArgs.
  ^ self performOnServer: command logging: logging