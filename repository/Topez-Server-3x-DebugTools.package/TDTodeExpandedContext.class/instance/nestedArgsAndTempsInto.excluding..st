synthetic fields
nestedArgsAndTempsInto: map excluding: excludedNames
  | noValueMarker homeFrame excluded candidateFrames homeMethod |
  self next ifNil: [ ^ self ].
  candidateFrames := OrderedCollection new.
  homeMethod := self homeMethod.
  false
    ifTrue: [ self frameIndex == 6
        ifTrue: [ self halt ] ].
  self
    nextDo: [ :frame | (homeMethod notNil and: [ frame gsMethod == homeMethod
            or: [ frame gsMethod ifNil: [ false ] ifNotNil: [ :m | m homeMethod == homeMethod ] ] ])
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