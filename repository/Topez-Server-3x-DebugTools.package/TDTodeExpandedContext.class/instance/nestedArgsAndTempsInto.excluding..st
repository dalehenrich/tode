synthetic fields
nestedArgsAndTempsInto: map excluding: excludedNames
  "scan all frames on stack that share a common homeMethod with receiver, including the homeMethod itself. extract arg and temps names and values from each of the methods."

  | noValueMarker homeFrame excluded candidateFrames homeMethod |
  self next ifNil: [ ^ self ].
  candidateFrames := OrderedCollection new.
  homeMethod := self homeMethod.
  homeMethod ifNil: [ ^ self ].
  self nextDo: [ :frame | (frame gsMethod == homeMethod
        or: [ frame gsMethod ifNil: [ false ] ifNotNil: [ :m | m homeMethod == homeMethod ] ])
        ifTrue: [ candidateFrames addLast: frame ] ].
  candidateFrames isEmpty
    ifTrue: [ ^ self ].
  noValueMarker := self noValueMarker.
  excluded := excludedNames copy.
  candidateFrames
    do: [ :frame | frame gsMethod argsAndTemps do: [ :symbol | | name |
          name := symbol asString.
          (excluded includes: name)
            ifFalse: [ | val |
              val := noValueMarker.
              val := frame argOrTempNamed: name ifAbsent: [ noValueMarker ].
              (map at: name ifAbsent: [ noValueMarker ]) == noValueMarker
                ifTrue: [ map at: name put: val ].
              val ~~ noValueMarker
                ifTrue: [ excluded add: name ] ] ] ]