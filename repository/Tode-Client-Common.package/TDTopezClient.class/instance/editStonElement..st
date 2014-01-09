as yet unclassified
editStonElement: aStonString
  | clientElement  |
  clientElement := STON fromString: aStonString.
  clientElement topez: self.
  ^self editClientElement: clientElement