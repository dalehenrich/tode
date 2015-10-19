git
gitRepoDirForRegistration: projectRegistration
  | gitPath repoPath |
  repoPath := projectRegistration gitRepoDirectoryPath.
  gitPath := System
    performOnServer: 'cd ' , repoPath , '; git rev-parse --show-toplevel'.
  ^ ServerFileDirectory on: gitPath trimBoth