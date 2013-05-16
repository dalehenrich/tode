as yet unclassified
mcdiff
  "mc diff [<regex-pkg-pattern>]
      diff @<workingCopy-path>
  "

  | pattern stream wcNode workingCopyList patch |
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
  workingCopyList
    do: [ :workingCopy | 
      stream
        nextPutAll:
            ('==================== ' , workingCopy name , ' ====================') asText
                allBold;
        cr.
      patch := self compareChangesFor: workingCopy on: stream.
      stream cr ].
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patch