as yet unclassified
editStonElement: aStonString
  | clientElement  |
  clientElement := self objectSerializer fromString: aStonString.
  clientElement topez: self.
  ^self editClientElement: clientElement