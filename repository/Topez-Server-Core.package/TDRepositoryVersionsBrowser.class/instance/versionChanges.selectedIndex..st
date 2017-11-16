actions
versionChanges: listElement selectedIndex: index
  | resolvedVersion version wc stream wcSnapshot |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  wc := self workingCopy.
  wcSnapshot := wc package snapshot.
  stream := TextStream on: Text new.
  self mcTool mccompare: wcSnapshot to: version snapshot on: stream.
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself).
  ^ true