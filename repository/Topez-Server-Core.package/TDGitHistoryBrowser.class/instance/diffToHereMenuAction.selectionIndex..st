tools
diffToHereMenuAction: listElement selectionIndex: index
  | oneline sha offset gitTool |
  oneline := (self history at: index) labelString.
  offset := oneline indexOf: Character space.
  sha := oneline copyFrom: 1 to: offset - 1.
  gitTool := self gitTool.
  gitTool
    gitfiletreetool: self commitish1
    commitish2: sha
    gitRepoDirectory: self gitRepoDirectory.
  ^ true