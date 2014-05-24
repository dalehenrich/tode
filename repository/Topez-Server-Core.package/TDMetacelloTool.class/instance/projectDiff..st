project api
projectDiff: registration
  | workingCopies stream patches |
  workingCopies := registration workingCopies.
  subOptions
    at: 'all'
    ifAbsent: [ workingCopies := workingCopies select: [ :wc | wc modified ] ].
  stream := TextStream on: Text new.
  stream
    nextPutAll:
        ('____________________ ' , registration projectName , ' ____________________')
            asText allBold;
    cr.
  patches := self diffForWorkingCopies: workingCopies on: stream.
  patches isEmpty
    ifTrue: [ ^ patches ].
  (TDTxtLeafNode new contents: stream contents)
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself).
  ^ patches