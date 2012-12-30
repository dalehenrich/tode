accessing
editSourceElement: aClientSourceElement label: label inWindow: windowId at: windowName
  ^ self topezClientForwarder
    editStonElement: (STON toString: aClientSourceElement)
    aspect: #'activateCodeEditor'
    label: label
    inWindow: windowId
    at: windowName