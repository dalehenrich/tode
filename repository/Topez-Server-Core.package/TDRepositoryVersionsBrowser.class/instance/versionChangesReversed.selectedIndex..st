actions
versionChangesReversed: listElement selectedIndex: index
  | resolvedVersion version wc wcVersionInfo stream wcSnapshot |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  wc := self workingCopy.
  wcVersionInfo := wc ancestry ancestors first.
  wcSnapshot := wc findSnapshotWithVersionInfo: wcVersionInfo.
  stream := TextStream on: Text new.
  self mcTool mccompare: version snapshot to: wcSnapshot on: stream.
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself).
  ^ true