as yet unclassified
editStonElement: aStonString edittingCode: edittingCode stylingActive: styleingActive label: labelString inWindow: windowIdOrNil at: windowLocation
    | clientElement |
    clientElement := STON fromString: aStonString.
    clientElement topez: self.
    self
        editElement: clientElement
        edittingCode: edittingCode
        stylingActive: styleingActive
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation.
    ^ ''