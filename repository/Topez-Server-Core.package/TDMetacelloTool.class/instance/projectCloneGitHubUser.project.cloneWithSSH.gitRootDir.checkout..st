project api
projectCloneGitHubUser: githubUser project: githubProject cloneWithSSH: cloneWithSSH gitRootDir: gitRootDir checkout: checkout
  | cloneUrl response gitTool gitRepoDirectory |
  cloneUrl := cloneWithSSH
    ifTrue: [ 'git@github.com:' ]
    ifFalse: [ 'https://github.com/' ].
  cloneUrl := cloneUrl , githubUser , '/' , githubProject , '.git'.
  gitTool := topez toolInstanceFor: 'git'.
  response := gitTool gitcloneIn: gitRootDir with: '--no-checkout ' , cloneUrl.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  gitRepoDirectory := gitRootDir directoryNamed: githubProject.
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