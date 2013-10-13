actions
workingCopyDiff: listElement selectedIndex: index
  | stream patches wcList |
  stream := TextStream on: Text new.
  patches := OrderedCollection new.
  wcList := index = 0
    ifTrue: [ self workingCopies ]
    ifFalse: [ {(self workingCopies at: index)} ].
  wcList
    do: [ :workingCopy | 
      | patch |
      patch := self mcTool mmDiffForWorkingCopy: workingCopy on: stream.
      patch isEmpty
        ifTrue: [ workingCopy modified: false ]
        ifFalse: [ 
          stream cr.
          patches
            add:
              {workingCopy.
              patch} ] ].
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself)