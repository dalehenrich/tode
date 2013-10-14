actions
workingUnload: listElement selectedIndex: index
  | wc def |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  def := self definitionForSelection: wc.
  self objectClipboard: def.
  self mcTool mcunloadWorkingCopy: wc.
  ^ #'refreshList'