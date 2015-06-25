client forwarder
editElement: aClientListElement
  ^ self topezClientForwarder
    editStonElement: (STON toUTF8EncodedString: aClientListElement)