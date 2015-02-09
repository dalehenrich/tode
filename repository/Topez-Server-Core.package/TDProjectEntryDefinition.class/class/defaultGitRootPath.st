accessing
defaultGitRootPath
  ^ SessionTemps current
    at: #'TDProjectEntry_DEFAULT_GitRootPath'
    ifAbsent: [ DefaultGitRootPath ifNil: [ '/opt/git' ] ]