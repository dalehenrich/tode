actions
browseChangesBetween: aWorkingCopy and: versionInfo
  | stream |
  stream := TextStream on: Text new.
  self mcTool mcDiffForWorkingCopy: self workingCopy and: versionInfo on: stream.
  ^ (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself)