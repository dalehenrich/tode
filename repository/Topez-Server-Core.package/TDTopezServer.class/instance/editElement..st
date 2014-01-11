client forwarder
editElement: aClientListElement
  ^ self topezClientForwarder
    editStonElement: (STON toString: aClientListElement)