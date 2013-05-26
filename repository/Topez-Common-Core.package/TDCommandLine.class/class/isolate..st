as yet unclassified
isolate: aString
  | isolated command final escaped |
  isolated := OrderedCollection new.
  command := WriteStream on: String new.
  escaped := false.
  aString
    do: [ :char | 
      escaped
        ifTrue: [ 
          command nextPut: char.
          char = $`
            ifTrue: [ escaped := false ] ]
        ifFalse: [ 
          char == $;
            ifTrue: [ 
              isolated add: command contents.
              command := WriteStream on: String new ]
            ifFalse: [ command nextPut: char ].
          char = $`
            ifTrue: [ escaped := true ] ] ].
  final := command contents.
  final isEmpty
    ifFalse: [ isolated add: final ].
  ^ isolated