actions
workingCopyRecompile: listElement selectedIndex: index
  | wc |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  self mcTool mcrecompileWorkingCopy: wc.
  ^ true