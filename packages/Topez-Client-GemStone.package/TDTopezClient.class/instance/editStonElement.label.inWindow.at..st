as yet unclassified
editStonElement: aStonString label: labelString inWindow: windowIdOrNil at: windowLocation
  | clientElement |
  clientElement := STON fromString: aStonString.
  clientElement topez: self.
  self
    editElement: clientElement
    label: labelString
    inWindow: windowIdOrNil
    at: windowLocation.
  ^ ''