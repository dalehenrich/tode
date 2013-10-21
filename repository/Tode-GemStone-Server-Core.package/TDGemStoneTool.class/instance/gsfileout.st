as yet unclassified
gsfileout
  "
  gs fileout <directory-path> <class-name> <filename> [ <class-name> <filename> ... ] 
"

  | directoryPath classnameFilenamePairs |
  directoryPath := tokens at: 2.
  classnameFilenamePairs := {}.
  3 to: tokens size by: 2 do: [ :index | 
    | classname filename |
    classname := tokens at: index.
    filename := tokens at: index + 1.
    classnameFilenamePairs
      add:
        {classname.
        filename} ].
  ^ self gsfileout: directoryPath classnameFilenamePairs: classnameFilenamePairs