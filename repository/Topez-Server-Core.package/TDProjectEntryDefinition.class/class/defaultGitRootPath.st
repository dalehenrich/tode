accessing
defaultGitRootPath
  ^ SessionTemps current
    at: #'TDProjectEntry_DEFAULT_GitRootPath'
    ifAbsent: [ DefaultGitRootPath ifNil: [ '$GS_HOME/shared/repos' ] ]