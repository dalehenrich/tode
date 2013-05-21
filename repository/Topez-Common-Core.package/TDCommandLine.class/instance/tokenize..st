as yet unclassified
tokenize: aString
  | list token final escaped delimited |
  list := OrderedCollection new.
  token := WriteStream on: String new.
  escaped := false.
  delimited := false.
  aString
    do: [ :char | 
      escaped
        ifTrue: [ 
          char = $`
            ifTrue: [ escaped := false ]
            ifFalse: [ token nextPut: char ] ]
        ifFalse: [ 
          char == Character space
            ifTrue: [ 
              delimited
                ifFalse: [ 
                  list add: token contents.
                  token := WriteStream on: String new ].
              delimited := true ]
            ifFalse: [ 
              delimited := false.
              char = $`
                ifTrue: [ escaped := true ]
                ifFalse: [ token nextPut: char ] ] ] ].
  final := token contents.
  final isEmpty
    ifFalse: [ list add: final ].
  ^ list