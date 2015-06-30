as yet unclassified
getEdgeDictionaryForClientListElement: aClientListElement
  | oopType stonString |
  oopType := self session
    rawReceiverNB: aClientListElement edgesBlockOopType
    perform: #'value:'
    withArgs: {(aClientListElement clientElementOopType)}.
  stonString := self session library localFor: oopType.
  ^ self objectSerializer fromString: stonString