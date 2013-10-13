actions
workingCopyHistory: listElement selectedIndex: index
  | wc browser |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  self mcTool mcBrowseVersionInfoFor: wc label: 'History for ' , wc package name.
  ^ true