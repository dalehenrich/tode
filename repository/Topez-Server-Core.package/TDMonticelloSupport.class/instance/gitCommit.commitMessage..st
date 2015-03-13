git
gitCommit: projectRegistration commitMessage: messageString
  | status gitRepoDir gitTool commitMessageFileName result |
  gitRepoDir := self gitRepoDirForRegistration: projectRegistration.
  gitTool := topez toolInstanceFor: 'git'.
  commitMessageFileName := gitTool createTmpFileWith: messageString.
  gitTool gitaddIn: gitRepoDir with: '.'.
  result := gitTool
    gitcommitIn: gitRepoDir
    with: '-a --file=' , commitMessageFileName.
  (result lines last beginsWith: 'fatal:')
    ifTrue: [ ^ self error: 'Git commit failed (after data written to disk): ' , result ].
  self gitUpdateRegistrationVersionInfo: projectRegistration.
  status := gitTool gitlogIn: gitRepoDir with: '-1'.
  Transcript
    cr;
    show: '==============';
    cr;
    show: status