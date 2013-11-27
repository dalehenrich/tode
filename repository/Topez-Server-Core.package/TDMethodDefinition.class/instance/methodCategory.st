as yet unclassified
methodCategory
  methodCategory
    ifNil: [ 
      | method category |
      method := self method.
      methodCategory := method inClass categoryOfSelector: self selector.
      methodCategory ifNil: [ category := ClassOrganizer default ] ].
  ^ methodCategory