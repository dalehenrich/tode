actions
versionInfoDiffVsSelection: listElement selectedIndex: selectedIndex
  | versionInfo stream |
  (selectedIndex = 0 or: [ selectedVersionInfo isNil ])
    ifTrue: [ ^ false ].
  versionInfo := self versionInfos at: selectedIndex.
  stream := TextStream on: Text new.
  self mcTool
    mcDiffForWorkingCopy: workingCopy
    between: selectedVersionInfo
    and: versionInfo
    on: stream.
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself)