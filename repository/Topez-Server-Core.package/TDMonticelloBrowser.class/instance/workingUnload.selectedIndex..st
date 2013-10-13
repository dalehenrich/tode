actions
workingUnload: listElement selectedIndex: index
  | wc browser |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  self mcTool mcunloadWorkingCopy: wc.
  ^ #'refreshList'