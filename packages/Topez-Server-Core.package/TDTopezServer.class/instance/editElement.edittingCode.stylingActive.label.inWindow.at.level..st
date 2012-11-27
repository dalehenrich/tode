accessing
editElement: anElement edittingCode: edittingCode stylingActive: stylingActive label: labelString inWindow: windowIdOrNil at: windowLocation level: level
    ^ self topezClientForwarder
        editStonElement: (STON toString: anElement)
        edittingCode: edittingCode
        stylingActive: stylingActive
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation