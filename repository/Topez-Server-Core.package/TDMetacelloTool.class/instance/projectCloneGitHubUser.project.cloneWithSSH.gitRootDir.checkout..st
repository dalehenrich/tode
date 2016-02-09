project api
projectCloneGitHubUser: githubUser project: githubProject cloneWithSSH: cloneWithSSH gitRootDir: gitRootDir checkout: checkout
  | cloneUrl response gitTool gitRepoDirectory cloneOption |
  cloneUrl := cloneWithSSH
    ifTrue: [ 'git@github.com:' ]
    ifFalse: [ 'https://github.com/' ].
  gitTool := topez toolInstanceFor: 'git'.
  gitRepoDirectory := gitRootDir directoryNamed: githubProject.
  gitRepoDirectory exists
    ifTrue: [ 
      [ 
      gitTool gitrevparseShowTopLevelIn: gitRepoDirectory.	"if this command returns then a git repository is already present in gitRootDir ... which is a good thing"
      self
        inform:
          'A git repo is already present at ' , gitRepoDirectory fullName printString.
      checkout
        ifNotNil: [ self projectCloneCheckout: checkout gitRepoDirectory: gitRepoDirectory ].
      ^ self ]
        on: Error
        do: [ :ignored | 
          self
            error:
              'Expected a git repository to present in the directory: '
                , gitRepoDirectory fullName printString ] ].
  cloneUrl := cloneUrl , githubUser , '/' , githubProject , '.git'.
  cloneOption := ' --no-checkout '.
  checkout ifNil: [ cloneOption := '' ].
  response := gitTool gitcloneIn: gitRootDir with: cloneOption , cloneUrl.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  checkout ifNil: [ ^ nil ].
  self projectCloneCheckout: checkout gitRepoDirectory: gitRepoDirectory