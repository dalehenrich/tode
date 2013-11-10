private
tokenize: aString
  | list token final escaped delimited stream |
  list := OrderedCollection new.
  argPtrs := OrderedCollection new.
  token := WriteStream on: String new.
  escaped := false.
  delimited := false.
  stream := ReadStream on: aString.
  [ stream atEnd ]
    whileFalse: [ 
      | char |
      char := stream next.
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
                  argPtrs add: stream position.
                  token := WriteStream on: String new ].
              delimited := true ]
            ifFalse: [ 
              delimited := false.
              char = $`
                ifTrue: [ escaped := true ]
                ifFalse: [ token nextPut: char ] ] ] ].
  final := token contents.
  final isEmpty
    ifFalse: [ 
      list add: final.
      argPtrs add: stream position ].
  ^ list