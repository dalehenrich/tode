menu actions (git)
gitDiffCachedMenuAction: listElement selectionIndex: selectionIndex
  | registration gitTool gitRepoDirectory |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  gitTool := self gitTool.
  (gitTool gitdifftoolCached: gitRepoDirectory) isEmpty
    ifTrue: [ self inform: 'No diffs' ].
  ^ true