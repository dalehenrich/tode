as yet unclassified
gsfileoutExtractHeaderFor: pair in: directory
  | header |
  (directory fileExists: (pair at: 2))
    ifFalse: [ ^ '' ].
  header := WriteStream on: String new.
  directory
    readOnlyFileNamed: (pair at: 2)
    do: [ :fileStream | 
      | line |
      line := fileStream nextLine.
      [ line notNil and: [ line size = 1 or: [ line beginsWith: '!' ] ] ]
        whileTrue: [ 
          header nextPutAll: line.
          line := fileStream nextLine ].
      ^ header contents ].
  ^ header contents