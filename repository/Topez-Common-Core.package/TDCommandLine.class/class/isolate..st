as yet unclassified
isolate: aString
  | isolated command final |
  isolated := OrderedCollection new.
  command := WriteStream on: String new.
  aString
    do: [ :char | 
      char == $;
        ifTrue: [ 
          isolated add: command contents.
          command := WriteStream on: String new ]
        ifFalse: [ command nextPut: char ] ].
  final := command contents.
  final isEmpty
    ifFalse: [ isolated add: final ].
  ^ isolated