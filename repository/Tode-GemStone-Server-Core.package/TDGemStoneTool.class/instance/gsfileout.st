fileout
gsfileout
  "
  gs fileout --directory=<filesystem-path> [--class|--package|--category] <fileout-pair>...
"

  | directoryPath fileoutPairs |
  self
    getSubcommandOptsMixedLongShort:
      {#('directory' nil #'required').
      #('class' nil #'none').
      #('package' nil #'none').
      #('category' nil #'none')}.
  directoryPath := subOptions at: 'directory'.
  fileoutPairs := {}.
  1 to: subArguments size by: 2 do: [ :index | 
    | itemName filename |
    itemName := subArguments at: index.
    filename := subArguments at: index + 1.
    fileoutPairs
      add:
        {itemName.
        filename} ].
  subOptions
    at: 'class'
    ifPresent: [ :ignored | 
      self
        gsfileout: directoryPath
        classnameFilenamePairs: fileoutPairs
        defaultHeader: '' ].
  subOptions
    at: 'package'
    ifPresent: [ :ignored | 
      self
        gsfileout: directoryPath
        packageFilenamePairs: fileoutPairs
        defaultHeader: '' ].
  subOptions
    at: 'category'
    ifPresent: [ :ignored | 
      self
        gsfileout: directoryPath
        categoryFilenamePairs: fileoutPairs
        defaultHeader: '' ]