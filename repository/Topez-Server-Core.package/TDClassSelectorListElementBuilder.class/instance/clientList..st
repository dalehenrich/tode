as yet unclassified
clientList: listElement
  ^ self listCategories
    ifTrue: [ self clientListCategories: listElement ]
    ifFalse: [ self clientListAll: listElement ]