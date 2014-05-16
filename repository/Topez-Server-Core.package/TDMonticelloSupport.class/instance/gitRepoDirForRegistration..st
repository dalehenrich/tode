git
gitRepoDirForRegistration: projectRegistration
  | gitPath repoPath |
  repoPath := projectRegistration gitRepoDirectoryPath.
  gitPath := System
    performOnServer: 'cd ' , repoPath , '; git rev-parse --show-toplevel'.
  (gitPath beginsWith: 'fatal:')
    ifTrue: [ self error: 'Project registration is not a git-based project' ].
  ^ ServerFileDirectory on: gitPath trimBoth