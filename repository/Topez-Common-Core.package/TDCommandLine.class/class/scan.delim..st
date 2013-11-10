private
scan: aString delim: delim
  | scanned command stream final escaped |
  scanned := OrderedCollection new.
  command := WriteStream on: String new.
  stream := ReadStream on: aString.
  escaped := false.
  [ stream atEnd ]
    whileFalse: [ 
      | char |
      char := stream next.
      escaped
        ifTrue: [ 
          char = $`
            ifTrue: [ escaped := false ].
          command nextPut: char ]
        ifFalse: [ 
          char == Character space
            ifTrue: [ 
              stream peek == delim
                ifTrue: [ 
                  scanned add: command contents.
                  command := WriteStream on: String new.
                  stream next.
                  command nextPut: stream next ]
                ifFalse: [ command nextPut: char ] ]
            ifFalse: [ 
              char = $`
                ifTrue: [ escaped := true ].
              command nextPut: char ] ] ].
  final := command contents.
  final isEmpty
    ifFalse: [ scanned add: final ].
  ^ scanned