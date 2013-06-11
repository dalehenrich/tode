as yet unclassified
buildRoassalMorph
  | view |
  view := self roassalView.
  view
    nodes: self list;
    treeLayout.
  ^ ROMorph on: self roassalRawView