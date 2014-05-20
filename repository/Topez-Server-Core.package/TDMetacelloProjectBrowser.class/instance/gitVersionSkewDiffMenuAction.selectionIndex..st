menu actions (git)
gitVersionSkewDiffMenuAction: listElement selectionIndex: selectionIndex
  | registration gitTool gitRepoDirectory |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  gitRepoDirectory := self projectTool gitRepoDirForRegistration: registration.
  gitTool := self gitTool.
  'No diffs'
    =
      (gitTool
        gitfiletreetool: registration versionString
        commitish2: registration currentVersionString
        gitRepoDirectory: gitRepoDirectory)
    ifTrue: [ self inform: 'No diffs' ].
  ^ true