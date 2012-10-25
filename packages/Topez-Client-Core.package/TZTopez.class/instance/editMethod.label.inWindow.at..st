editting
editMethod: aMethodElement label: labelString inWindow: windowIdOrNil at: windowLocation
    ^ self
        editCodeElement: aMethodElement
        label: labelString , ': ' , aMethodElement renderLabel asString
        inWindow: windowIdOrNil
        at: windowLocation