as yet unclassified
diff
  "mc diff [<pkg-spec>]"

  | pattern stream wcNode workingCopyList |
  workingCopyList := tokens size = 1
    ifTrue: [ objIn ]
    ifFalse: [ 
      pattern := tokens at: 2.
      self findMatchingPackages: pattern topez: topez ].
  stream := WriteStream on: String new.
  workingCopyList
    do: [ :workingCopy | 
      workingCopy workingCopy modified
        ifTrue: [ 
          stream
            nextPutAll: '==================== ' , workingCopy name , ' ====================';
            cr.
          self compareChangesFor: workingCopy workingCopy on: stream.
          stream cr ] ].
  ^ stream contents