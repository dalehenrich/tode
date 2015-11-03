menu actions (git)
gitVersionSkewSaveProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration gitTool gitRepoDirectory baseSHA targetSHA mergeBranchName commitMessage result targetBranch commitTemplate mergeSucceeded dotGit doMergeBlock |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  gitTool := self gitTool.
  baseSHA := registration versionString.
  targetSHA := registration currentVersionString.
  targetBranch := registration currentBranchName.
  mergeBranchName := (GsTextInteraction
    prompt: 'Enter temporary merge branch name'
    template: baseSHA , '_merge_' , targetSHA) signal.
  mergeBranchName ifNil: [ ^ false ].
  commitMessage := (GsMultiLineTextInteraction
    prompt:
      'Please enter a commit message for temporary branch commit of : '
        , registration projectName
    template:
      'temp branch (' , mergeBranchName , ') for merge from ' , baseSHA , ' to '
        , targetBranch , '(' , targetSHA , ')')
    signal.
  commitMessage ifNil: [ ^ false ].
  [ 
  gitTool
    gitcheckoutIn: gitRepoDirectory
    with: '-b ' , mergeBranchName , ' ' , baseSHA ]
    on: Error
    do: [ :ex | ^ false ].
  registration saveProjectUsing: self projectTool commitMessage: commitMessage.
  [ gitTool gitcheckoutIn: gitRepoDirectory with: targetBranch ]
    on: Error
    do: [ :ex | ^ false ].
  self projectTool
    projectMerge: registration
    commitish: mergeBranchName
    gitRepoDirectory: gitRepoDirectory.
  ^ #'refreshView'