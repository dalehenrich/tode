project api
projectCloneCheckout: checkout gitRepoDirectory: gitRepoDirectory
  | gitTool |
  gitTool := topez toolInstanceFor: 'git'.
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