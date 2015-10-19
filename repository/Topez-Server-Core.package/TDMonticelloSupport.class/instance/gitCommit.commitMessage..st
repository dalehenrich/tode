git
gitCommit: projectRegistration commitMessage: messageString
  | status gitRepoDir gitTool commitMessageFileName |
  gitRepoDir := self gitRepoDirForRegistration: projectRegistration.
  gitTool := topez toolInstanceFor: 'git'.
  commitMessageFileName := gitTool createTmpFileWith: messageString.
  gitTool gitaddIn: gitRepoDir with: '.'.
  gitTool gitcommitIn: gitRepoDir with: '-a --file=' , commitMessageFileName.
  self gitUpdateRegistrationVersionInfo: projectRegistration.
  status := gitTool gitlogIn: gitRepoDir with: '-1'.
  Transcript
    cr;
    show: '==============';
    cr;
    show: status