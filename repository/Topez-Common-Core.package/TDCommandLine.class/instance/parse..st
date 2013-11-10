as yet unclassified
parse: aString
  | args opts token final escaped delimited optioned space |
  args := OrderedCollection new.
  opts := Dictionary new.
  token := WriteStream on: String new.
  optioned := escaped := false.
  delimited := false.
  space := Character space.
  aString
    do: [ :char | 
      escaped
        ifTrue: [ 
          char == $`
            ifTrue: [ escaped := false ]
            ifFalse: [ token nextPut: char ] ]
        ifFalse: [ 
          optioned
            ifTrue: [  ]
            ifFalse: [ 
              char == space
                ifTrue: [ 
                  delimited
                    ifFalse: [ 
                      args add: token contents.
                      token := WriteStream on: String new ].
                  delimited := true ]
                ifFalse: [ 
                  delimited := false.
                  char == $`
                    ifTrue: [ escaped := true ]
                    ifFalse: [ 
                      char == $-
                        ifTrue: [  ]
                        ifFalse: [ token nextPut: char ] ] ] ] ] ].
  final := token contents.
  final isEmpty
    ifFalse: [ args add: final ].
  ^ args