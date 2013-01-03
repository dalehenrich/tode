accessing
editElement: aClientListElement
  self serverStatus elementCache add: aClientListElement.
  ^ self topezClientForwarder editStonElement: (STON toString: aClientListElement)