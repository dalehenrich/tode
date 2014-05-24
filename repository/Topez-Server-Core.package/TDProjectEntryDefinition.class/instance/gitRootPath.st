accessing
gitRootPath
  gitRootPath ifNil: [ gitRootPath := self class defaultGitRootPath ].
  ^ gitRootPath