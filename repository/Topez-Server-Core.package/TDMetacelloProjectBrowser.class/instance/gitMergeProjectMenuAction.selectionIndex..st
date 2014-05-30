menu actions (git)
gitMergeProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration gitRepoDirectory gitTool commitish result |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  gitTool := self gitTool.
  commitish := (GsTextInteraction
    prompt: 'Enter commit to be merged'
    template: 'branch | commitish ') signal.
  commitish ifNil: [ ^ false ].
  self projectTool
    projectMerge: registration
    commitish: commitish
    gitRepoDirectory: gitRepoDirectory.
  ^ #'refreshView'