actions
workingCopyDiff: listElement selectedIndex: index
  | stream patches patch |
  stream := TextStream on: Text new.
  patches := OrderedCollection new.
  patch := self mcTool mmDiffForWorkingCopy: self workingCopy on: stream.
  patch isEmpty
    ifTrue: [ workingCopy modified: false ]
    ifFalse: [ 
      stream cr.
      patches
        add:
          {workingCopy.
          patch} ].
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself)