as yet unclassified
itemSelectedForClientListElement: aClientListElement index: index
  self session
    rawReceiverNB: aClientListElement itemSelectedBlockOopType
    perform: #'value:value:value:'
    withArgs:
      {(aClientListElement clientElementOopType).
      index.
      (Sensor shiftPressed)}