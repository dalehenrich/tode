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
  result := gitTool
    gitcheckoutIn: gitRepoDirectory
    with: '-b ' , mergeBranchName , ' ' , baseSHA.
  (result beginsWith: 'fatal:')
    ifTrue: [ ^ false ].
  registration saveProjectUsing: self projectTool commitMessage: commitMessage.
  result := gitTool gitcheckoutIn: gitRepoDirectory with: targetBranch.
  (result beginsWith: 'fatal:')
    ifTrue: [ ^ false ].
  self projectTool
    projectMerge: registration
    commitish: mergeBranchName
    gitRepoDirectory: gitRepoDirectory.
  ^ #'refreshView'