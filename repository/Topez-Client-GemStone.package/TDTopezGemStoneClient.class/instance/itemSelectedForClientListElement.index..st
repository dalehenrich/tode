as yet unclassified
itemSelectedForClientListElement: aClientListElement index: index
  | oopType |
	oopType :=self session
    rawReceiverNB: aClientListElement itemSelectedBlockOopType
    perform: #'value:value:value:'
    withArgs:
      {(aClientListElement clientElementOopType).
      index.
      (Sensor shiftPressed)}.
	^ self session library localFor: oopType