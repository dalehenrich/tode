accessing
defaultGitRootPath
  DefaultGitRootPath ifNil: [ DefaultGitRootPath := '/opt/git' ].
  ^ DefaultGitRootPath