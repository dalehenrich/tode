accessing
editElement: aClientElement edittingCode: edittingCode stylingActive: stylingActive label: labelString inWindow: windowIdOrNil at: windowLocation
    ^ self topezClientForwarder
        editStonElement: (STON toString: aClientElement)
        edittingCode: edittingCode
        stylingActive: stylingActive
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation