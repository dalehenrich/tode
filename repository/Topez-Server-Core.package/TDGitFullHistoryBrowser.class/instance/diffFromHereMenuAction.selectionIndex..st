tools
diffFromHereMenuAction: listElement selectionIndex: index
  | oneline sha offset gitTool |
  oneline := self history at: index.
  offset := oneline indexOf: Character space.
  sha := oneline copyFrom: 1 to: offset - 1.
  gitTool := self gitTool.
  'No diffs'
    =
      (gitTool
        gitfiletreetool: sha
        commitish2: self commitish2
        gitRepoDirectory: self gitRepoDirectory)
    ifTrue: [ self inform: 'No diffs' ].
  ^ true