as yet unclassified
mcdiff
  "mc diff [<regex-pkg-pattern>]"

  | pattern stream wcNode workingCopyList patch |
  workingCopyList := tokens size = 1
    ifTrue: [ objIn ]
    ifFalse: [ 
      pattern := tokens at: 2.
      self findMatchingPackages: pattern topez: topez ].
  stream := TextStream on: Text new.
  workingCopyList
    do: [ :workingCopy | 
      stream
        nextPutAll:
            ('==================== ' , workingCopy name , ' ====================') asText
                allBold;
        cr.
      patch := self compareChangesFor: workingCopy workingCopy on: stream.
      stream cr ].
  stream contents edit: topez aspect: #'browse' windowId: nil.
  ^ patch