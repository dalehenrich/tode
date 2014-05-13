project api
projectStatus: registration
  | gitTool gitRepoDirectory status |
  self validateGitRepoExistsFor: registration.
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  status := gitTool gitstatusIn: gitRepoDirectory with: ''.
  status
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'gitStatus';
        windowLabel: 'git status for ' , registration projectName;
        yourself).
  ^ status