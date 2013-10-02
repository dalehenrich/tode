as yet unclassified
gsfileoutExtractHeaderFor: filename in: directory
  | header |
  (directory fileExists: filename)
    ifFalse: [ ^ '' ].
  header := WriteStream on: String new.
  directory
    readOnlyFileNamed: filename
    do: [ :fileStream | 
      | line |
      line := fileStream nextLine.
      [ line notNil and: [ line beginsWith: '!' ] ]
        whileTrue: [ 
          header nextPutAll: line.
          line := fileStream nextLine ].
      ^ header contents ].
  ^ header contents