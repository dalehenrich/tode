as yet unclassified
methodCategory
  methodCategory
    ifNil: [ 
      | method category |
      method := self method.
      methodCategory := self appEnv
        categoryOfSelector: self selector
        for: method inClass.
      methodCategory ifNil: [ category := ClassOrganizer default ] ].
  ^ methodCategory