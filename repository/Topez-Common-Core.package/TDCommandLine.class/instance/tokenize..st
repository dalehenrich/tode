private
tokenize: aString
  | list token final escaped delimited stream count |
  list := OrderedCollection new.
  argPtrs := OrderedCollection new.
  token := WriteStream on: String new.
  escaped := false.
  delimited := false.
  stream := ReadStream on: aString.
  count := 0.
  [ stream atEnd ]
    whileFalse: [ 
      | char |
      char := stream next.
      count := count + 1.
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
                  argPtrs add: count.
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
      argPtrs add: count + 1 ].
  ^ list