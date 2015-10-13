as yet unclassified
classHistoryIndex
  ^ self theClass classHistory
    ifNil: [ 1 ]
    ifNotNil: [ :ch | ch indexOf: self theClass ]