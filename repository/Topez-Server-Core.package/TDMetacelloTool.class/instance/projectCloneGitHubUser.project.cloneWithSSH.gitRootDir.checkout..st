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
  gitTool gitcheckoutIn: gitRepoDirectory with: checkout.
  [ gitTool gitsymbolicrefIn: gitRepoDirectory with: 'HEAD' ]
    on: Error
    do: [ :ex | 
      | newBranchName |
      "detached HEAD ... need to create new branch"
      newBranchName := (GsTextInteraction
        prompt:
          'There is no branch associated with ' , checkout printString
            ,
              '.
Please specify a new branch name to use for this checkout. 
If you cancel, a branch name can be specified at a later date.'
        template: 'my_' , checkout) signal.
      newBranchName
        ifNotNil: [ 
          newBranchName isEmpty
            ifFalse: [ gitTool gitcheckoutIn: gitRepoDirectory with: '-b ' , newBranchName ] ] ]