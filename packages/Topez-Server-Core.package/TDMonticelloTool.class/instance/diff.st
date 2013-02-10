as yet unclassified
diff
  "mc diff [<regex-pkg-pattern>]"

  | pattern stream wcNode workingCopyList empty |
  workingCopyList := tokens size = 1
    ifTrue: [ objIn ]
    ifFalse: [ 
      pattern := tokens at: 2.
      self findMatchingPackages: pattern topez: topez ].
  stream := TextStream on: Text new.
  empty := true.
  workingCopyList
    do: [ :workingCopy | 
      workingCopy workingCopy modified
        ifTrue: [ 
          empty := false.
          stream
            nextPutAll:
                ('==================== ' , workingCopy name , ' ====================') asText
                    allBold;
            cr.
          self compareChangesFor: workingCopy workingCopy on: stream.
          stream cr ] ].
  empty
    ifTrue: [ ^ 'No modifications' asText allBold ].
  ^ stream contents