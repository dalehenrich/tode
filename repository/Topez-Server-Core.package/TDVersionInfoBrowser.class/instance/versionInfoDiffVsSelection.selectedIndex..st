actions
versionInfoDiffVsSelection: listElement selectedIndex: selectedIndex
  | versionInfo stream |
  (selectedIndex = 0 or: [ selectedVersionInfo isNil ])
    ifTrue: [ ^ false ].
  versionInfo := self versionInfos at: selectedIndex.
  stream := TextStream on: Text new.
  workingCopy
    ifNil: [ 
      | selectedVersion version patch |
      selectedVersion := repository versionWithInfo: selectedVersionInfo.
      selectedVersion
        ifNil: [ self error: selectedVersionInfo name , ' not found in ' , repository description ].
      version := repository versionWithInfo: versionInfo.
      version
        ifNil: [ self error: versionInfo name , ' not found in ' , repository description ].
      patch := selectedVersion snapshot patchRelativeToBase: version snapshot.
      patch isEmpty
        ifTrue: [ ^ patch ].
      stream
        nextPutAll:
            ('==================== ' , selectedVersionInfo name , ' vs ' , versionInfo name
                , ' ====================') asText allBold;
        cr.
      self mcTool diffPatch: patch on: stream.
      stream cr ]
    ifNotNil: [ 
      self mcTool
        mcDiffForWorkingCopy: workingCopy
        between: selectedVersionInfo
        and: versionInfo
        on: stream ].
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself)