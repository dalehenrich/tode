synthetic fields
nestedArgsAndTempsInto: map excluding: excludedNames
  | noValueMarker homeFrame excluded candidateFrames |
  self next ifNil: [ ^ self ].
  candidateFrames := OrderedCollection new.
  self homeMethod
    ifNil: [ ^ self ]
    ifNotNil: [ :homeMethod | self nextDo: [ :frame | frame gsMethod == homeMethod
            ifTrue: [ candidateFrames addLast: frame ] ] ].
  candidateFrames isEmpty
    ifTrue: [ self varContext
        ifNil: [ ^ self ]
        ifNotNil: [ :varContext | self nextDo: [ :frame | frame varContext == varContext
                ifTrue: [ candidateFrames addLast: frame ] ] ].
      candidateFrames isEmpty
        ifTrue: [ ^ self ] ].
  noValueMarker := self noValueMarker.
  excluded := excludedNames copy.
  candidateFrames
    do: [ :frame | frame gsMethod argsAndTemps do: [ :symbol | | name |
          name := symbol asString.
          (excluded includes: name)
            ifFalse: [ | val |
              val := noValueMarker.
              frame homeContext
                ifNotNil: [ :homeContext | val := homeContext argOrTempNamed: name ifAbsent: [ noValueMarker ] ].
              (map at: name ifAbsent: [ noValueMarker ]) == noValueMarker
                ifTrue: [ map at: name put: val ].
              val ~~ noValueMarker
                ifTrue: [ excluded add: name ] ] ] ]