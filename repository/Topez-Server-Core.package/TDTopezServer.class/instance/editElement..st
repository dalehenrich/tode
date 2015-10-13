client forwarder
editElement: aClientListElement
  ^ self topezClientForwarder
    editStonElement: (self objectSerializer toString: aClientListElement)