synthetic fields
nestedArgsAndTempsInto: map excluding: excludedNames
  | sentinel |
  sentinel := Object new.
  self homeMethod
    ifNotNil: [ :homeMethod | homeMethod argsAndTemps do: [ :symbol | | name |
          name := symbol asString.
          (excludedNames includes: name)
            ifFalse: [ | val |
              val := sentinel.
              self homeContext
                ifNotNil: [ :homeContext | val := homeContext nestedArgOrTempNamed: name ifAbsent: [ sentinel ] ].
              map at: name put: val ] ] ]