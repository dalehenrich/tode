parsing
fromStream: aStream selectLine: selectLineBlock forEachCommand: aBlock
  "multi-line input"

  | cmdLines line escaped lastLine |
  cmdLines := OrderedCollection new.
  escaped := false.
  lastLine := ''.
  [ aStream atEnd ]
    whileFalse: [ 
      line := aStream nextLine.
      (line isNil or: [ line isEmpty ])
        ifFalse: [ 
          (line isEmpty not and: [ line last == $\ ])
            ifTrue: [ 
              escaped := true.
              lastLine := lastLine , (line copyFrom: 1 to: line size - 1) ]
            ifFalse: [ 
              escaped
                ifTrue: [ 
                  cmdLines add: lastLine , line.
                  escaped := false ]
                ifFalse: [ cmdLines add: line ] ] ] ].
  escaped
    ifTrue: [ cmdLines add: lastLine ].
  cmdLines
    do: [ :cmdLine | 
      (selectLineBlock value: cmdLine)
        ifTrue: [ self line: cmdLine forEachCommand: aBlock ] ]