actions
workingCopyBrowse: listElement selectedIndex: index
  | wc snapshot |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  snapshot := wc package snapshot.
  self mcTool mcbrowseSnapshot: snapshot.
  ^ true