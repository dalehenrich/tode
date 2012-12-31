as yet unclassified
editStonElement: aStonString aspect: aspectSelector label: labelString inWindow: windowIdOrNil at: windowLocation
  | clientElement |
  clientElement := STON fromString: aStonString.
  clientElement topez: self.
  ^ self
    editElement: clientElement
    aspect: aspectSelector
    label: labelString
    inWindow: windowIdOrNil
    at: windowLocation