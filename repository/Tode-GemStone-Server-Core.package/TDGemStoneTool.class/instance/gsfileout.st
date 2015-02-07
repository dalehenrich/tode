as yet unclassified
gsfileout
  "
  gs fileout --directory=<filesystem-path> [--class|--package|--category] <fileout-pair>...
"

  | directoryPath fileoutPairs |
  self
    getOptsMixedLongShort:
      {#('directory' nil #'required').
      #('class' nil #'none').
      #('package' nil #'none').
      #('category' nil #'none')}.
  directoryPath := options at: 'directory'.
  fileoutPairs := {}.
  1 to: arguments size by: 2 do: [ :index | 
    | itemName filename |
    itemName := arguments at: index.
    filename := arguments at: index + 1.
    fileoutPairs
      add:
        {itemName.
        filename} ].
  options
    at: 'class'
    ifPresent: [ :ignored | 
      self
        gsfileout: directoryPath
        classnameFilenamePairs: fileoutPairs
        defaultHeader: '' ].
  options
    at: 'package'
    ifPresent: [ :ignored | 
      self
        gsfileout: directoryPath
        packageFilenamePairs: fileoutPairs
        defaultHeader: '' ].
  options
    at: 'category'
    ifPresent: [ :ignored | 
      self
        gsfileout: directoryPath
        categoryFilenamePairs: fileoutPairs
        defaultHeader: '' ]