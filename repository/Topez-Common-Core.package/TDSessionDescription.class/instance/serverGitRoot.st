accessing
serverGitRoot
  serverGitRoot ifNil: [ serverGitRoot := '$GS_HOME/tode/sys/local/git' ].
  ^ serverGitRoot