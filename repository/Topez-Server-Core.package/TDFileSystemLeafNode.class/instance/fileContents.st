as yet unclassified
fileContents
  | directoryEntry |
  directoryEntry := self directoryEntry.
  directoryEntry sourceDirectory
    readOnlyFileNamed: directoryEntry name
    do: [ :fileStream | ^ fileStream contents asString ]