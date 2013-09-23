as yet unclassified
clientList: listElement
  ^ self enableProtocol
    ifTrue: [ self clientListCategories: listElement ]
    ifFalse: [ self clientListAll: listElement ]