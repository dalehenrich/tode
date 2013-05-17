as yet unclassified
scan: aString delim: delim
  | scanned command stream final |
  scanned := OrderedCollection new.
  command := WriteStream on: String new.
  stream := ReadStream on: aString.
  [ stream atEnd ]
    whileFalse: [ 
      | char |
      char := stream next.
      char == Character space
        ifTrue: [ 
          stream peek == delim
            ifTrue: [ 
              scanned add: command contents.
              command := WriteStream on: String new.
              stream next.
              command nextPut: stream next ]
            ifFalse: [ command nextPut: char ] ]
        ifFalse: [ command nextPut: char ] ].
  final := command contents.
  final isEmpty
    ifFalse: [ scanned add: final ].
  ^ scanned