accessing
editElement: aClientElement label: labelString inWindow: windowIdOrNil at: windowLocation
  ^ self topezClientForwarder
    editStonElement: (STON toString: aClientElement)
    label: labelString
    inWindow: windowIdOrNil
    at: windowLocation