accessing
editElement: anElement edittingCode: edittingCode stylingActive: stylingActive label: labelString inWindow: windowIdOrNil at: windowLocation level: level
    ^ self topezClientForwarder
        editStonElement: (self toString: anElement level: level)
        edittingCode: edittingCode
        stylingActive: stylingActive
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation