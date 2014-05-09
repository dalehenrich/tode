diff
diffPatch: patch forWorkingCopy: anMCWorkingCopy on: stream
  | diffy |
  diffy := MCDiffyTextWriter on: stream.
  anMCWorkingCopy ancestors size = 0
    ifTrue: [ 
      stream
        nextPutAll: '... no version with which to compare (all added)..';
        cr ]
    ifFalse: [ 
      patch isEmpty
        ifTrue: [ 
          anMCWorkingCopy modified: false.
          stream
            nextPutAll: '... no changes';
            cr.
          ^ self ]
        ifFalse: [ 
          anMCWorkingCopy modified
            ifFalse: [ anMCWorkingCopy modified: true ] ] ].
  diffy writePatch: patch