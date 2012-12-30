accessing
editListElement: aClientListElement label: label inWindow: windowId at: windowName
  self serverStatus elementCache add: aClientListElement.
  ^ self topezClientForwarder
    editStonElement: (STON toString: aClientListElement)
    aspect: #'activateListEditor'
    label: label
    inWindow: windowId
    at: windowName