accessing
editListElement: aClientListElement label: label inWindow: windowId at: windowName
  ^ self topezClientForwarder
    editStonElement: (STON toString: aClientListElement)
    aspect: #'activateListEditor'
    label: label
    inWindow: windowId
    at: windowName