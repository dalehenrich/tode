accessing
editSourceElement: aClientSourceElement label: label inWindow: windowId at: windowName
  self serverStatus elementCache add: aClientSourceElement.
  ^ self topezClientForwarder
    editStonElement: (STON toString: aClientSourceElement)
    aspect: #'activateCodeEditor'
    label: label
    inWindow: windowId
    at: windowName