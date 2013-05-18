as yet unclassified
mcdiff
  "mc diff [<regex-pkg-pattern>]
      diff @<workingCopy-path>
  "

  | pattern stream workingCopyList patches |
  workingCopyList := tokens size = 1
    ifTrue: [ objIn ]
    ifFalse: [ 
      pattern := tokens at: 2.
      (pattern beginsWith: '@')
        ifTrue: [ 
          | wcOrCollection |
          wcOrCollection := (self resolveAtPathReference: pattern) dotSelfObject.
          wcOrCollection isCollection
            ifFalse: [ wcOrCollection := {wcOrCollection} ].
          wcOrCollection ]
        ifFalse: [ self findMatchingPackages: pattern topez: topez ] ].
  stream := TextStream on: Text new.
  patches := workingCopyList
    collect: [ :workingCopy | 
      | patch |
      patch := self mmDiffForWorkingCopy: workingCopy on: stream.
      stream cr.
      {workingCopy.
      patch} ].
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patches