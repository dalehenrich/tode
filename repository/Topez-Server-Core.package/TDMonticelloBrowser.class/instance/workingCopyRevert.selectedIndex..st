actions
workingCopyRevert: listElement selectedIndex: index
  | wc browser |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  self mcTool mcrevertWorkingCopy: wc.
  ^ #'refreshList'