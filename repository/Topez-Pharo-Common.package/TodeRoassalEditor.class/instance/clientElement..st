as yet unclassified
clientElement: aClientElement
  | view morph |
  view := self roassalView.
  view
    nodes: aClientElement list;
    edgesFrom: [ :element | aClientElement edgeDictionary at: element ];
    treeLayout.
  ROEaselMorphic new populateMenuOn: view.
  view open