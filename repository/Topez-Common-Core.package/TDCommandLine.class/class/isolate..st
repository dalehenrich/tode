private
isolate: aString
  | isolated command final escaped skipComment |
  isolated := OrderedCollection new.
  command := WriteStream on: String new.
  skipComment := escaped := false.
  aString
    do: [ :char | 
      skipComment
        ifFalse: [ 
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
                ifFalse: [ 
                  char == $#
                    ifTrue: [ skipComment := true ]
                    ifFalse: [ command nextPut: char ] ].
              char = $`
                ifTrue: [ escaped := true ] ] ] ].
  final := command contents.
  final isEmpty
    ifFalse: [ isolated add: final ].
  ^ isolated