as yet unclassified
stonContents: aSTONString
  | directoryEntry |
  directoryEntry := self directoryEntry.
  directoryEntry sourceDirectory
    forceNewFileNamed: directoryEntry name
    do: [ :fileStream | ^ fileStream nextPutAll: (STON fromString: aSTONString) ]