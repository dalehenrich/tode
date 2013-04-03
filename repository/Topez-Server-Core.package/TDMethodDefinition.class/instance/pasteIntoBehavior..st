as yet unclassified
pasteIntoBehavior: aBehavior
  "add method to aBehavior"

  | method source category |
  method := self method.
  source := method sourceString.
  category := method inClass categoryOfSelector: self selector.
  category ifNil: [ category := ClassOrganizer default ].
  aBehavior compile: source classified: category.
  ^ true