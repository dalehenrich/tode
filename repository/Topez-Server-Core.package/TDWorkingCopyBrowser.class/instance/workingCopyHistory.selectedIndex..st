actions
workingCopyHistory: listElement selectedIndex: index
  | wc |
  index = 0
    ifTrue: [ ^ false ].
  wc := self workingCopies at: index.
  versionInfoWindowId := self mcTool
    mcBrowseVersionInfoFor: wc
    parentBuilder: self
    windowId: versionInfoWindowId
    label: 'History for ' , wc package name.
  ^ true