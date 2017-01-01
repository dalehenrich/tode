client list element
nestedArgAndTempVarNamesMap
  "scan all frames on stack that share a common homeMethod with receiver, including the homeMethod itself. extract arg and temps names and values from each of the methods."

  | map noValueMarker homeFrame candidateFrames homeMethod |
  map := Dictionary new.
  self next ifNil: [ ^ map ].
  homeMethod := self homeMethod.
  homeMethod ifNil: [ ^ map ].
  noValueMarker := self noValueMarker.
  self homeMethod argsAndTemps do: [ :symbol | | name val |
      name := symbol asString.
      val := noValueMarker.
      self homeContext
        ifNotNil: [ :homeContext | val := homeContext argOrTempNamed: name ifAbsent: [ noValueMarker ] ].
      map at: name put: val ].
  candidateFrames := OrderedCollection new.
  self nextDo: [ :frame | (frame gsMethod == homeMethod
        or: [ frame gsMethod ifNil: [ false ] ifNotNil: [ :m | m homeMethod == homeMethod ] ])
        ifTrue: [ candidateFrames addFirst: frame ] ].
  candidateFrames addLast: self.
  candidateFrames
    do: [ :frame | frame gsMethod argsAndTemps do: [ :symbol | | name val |
          name := symbol asString.
          map at: name put: noValueMarker.
          val := noValueMarker.
          val := frame argOrTempNamed: name ifAbsent: [ noValueMarker ].
          map at: name put: val ] ].
  ^ map