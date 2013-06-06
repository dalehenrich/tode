as yet unclassified
getListForClientListElement: aClientListElement
  | oopType stonString |
  oopType := self session
    rawReceiverNB: aClientListElement listBlockOopType
    perform: #'value:'
    withArgs: {(aClientListElement clientElementOopType)}.
  stonString := self session library localFor: oopType.
  ^ STON fromString: stonString