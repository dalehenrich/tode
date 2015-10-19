project api
projectMerge: registration commitish: commitish gitRepoDirectory: gitRepoDirectory
  | gitTool commitMessage result mergeSucceeded dotGit doMergeBlock commitTemplate |
  gitTool := self topez toolInstanceFor: 'git'.
  [ 
  result := gitTool
    gitmergeIn: gitRepoDirectory
    with: '--no-ff --no-commit ' , commitish ]
    on: Error
    do: [ :ex | ^ false ].
  (result beginsWith: 'Already up-to-date.')
    ifTrue: [ 
      self inform: 'Already up-to-date.'.
      ^ true ].
  doMergeBlock := [ 
  dotGit := gitRepoDirectory directoryNamed: '.git'.
  dotGit
    readOnlyFileNamed: 'MERGE_MSG'
    do: [ :stream | commitTemplate := stream contents ].
  commitMessage := (GsMultiLineTextInteraction
    prompt:
      'Please enter a merge commit message for project: ' , registration projectName
    template: commitTemplate) signal.
  commitMessage ifNil: [ commitMessage := '' ].
  self gitCommit: registration commitMessage: commitMessage.
  registration loadProjectUsing: self ].
  mergeSucceeded := (gitTool gitlsfiles: gitRepoDirectory) isEmpty.
  mergeSucceeded
    ifTrue: [ doMergeBlock value ]
    ifFalse: [ 
      gitTool
        gitmergetool: gitRepoDirectory
        mergerCompletionBlock: doMergeBlock
        mergerAbortBlock: [  ]
        windowLabel: 'Merge ' , commitish , ' for ' , registration projectName ].
  ^ true