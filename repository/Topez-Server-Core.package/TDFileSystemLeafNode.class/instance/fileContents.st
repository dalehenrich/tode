as yet unclassified
fileContents
  | directoryEntry |
  directoryEntry := self directoryEntry.
  directoryEntry sourceDirectory
    fileNamed: directoryEntry name
    do: [ :fileStream | ^ fileStream contents asString ]