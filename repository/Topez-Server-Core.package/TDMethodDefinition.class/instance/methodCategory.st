as yet unclassified
methodCategory
  | method category |
  method := self method.
  category := method inClass categoryOfSelector: self selector.
  category ifNil: [ category := ClassOrganizer default ].
  ^ category