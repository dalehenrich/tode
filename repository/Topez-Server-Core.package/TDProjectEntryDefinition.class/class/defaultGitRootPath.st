accessing
defaultGitRootPath
  ^ SessionTemps current
    at: #'TDProjectEntry_DEFAULT_GitRootPath'
    ifAbsent: [ DefaultGitRootPath ifNil: [ '$GS_HOME/tode/sys/local/git' ] ]