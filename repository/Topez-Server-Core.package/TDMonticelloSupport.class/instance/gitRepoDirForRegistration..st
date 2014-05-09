git
gitRepoDirForRegistration: projectRegistration
  | gitPath repoPath |
  repoPath := projectRegistration repositorySpec createRepository directory
    fullName.
  gitPath := System
    performOnServer: 'cd ' , repoPath , '; git rev-parse --show-toplevel'.
  ^ ServerFileDirectory on: gitPath trimBoth