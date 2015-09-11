instance creation
fromClass: aClass
  ^ aClass classHistory
    ifNil: [ self className: aClass className classHistoryIndex: 1 ]
    ifNotNil: [ :ch | self className: aClass className classHistoryIndex: (ch indexOf: aClass) ]