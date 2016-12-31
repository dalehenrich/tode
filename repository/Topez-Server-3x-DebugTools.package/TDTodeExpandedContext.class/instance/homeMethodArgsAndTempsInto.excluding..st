synthetic fields
homeMethodArgsAndTempsInto: map excluding: excludedNames
  "get and resolve args and temps from homeMethod"

  | noValueMarker |
  noValueMarker := self noValueMarker.
  self homeMethod ifNil: [ ^ self ].
  self homeMethod argsAndTemps do: [ :symbol | | name |
      name := symbol asString.
      (excludedNames includes: name)
        ifFalse: [ | val |
          val := noValueMarker.
          self homeContext
            ifNotNil: [ :homeContext | val := homeContext nestedArgOrTempNamed: name ifAbsent: [ noValueMarker ] ].
          map at: name put: val ] ]