as yet unclassified
pasteIntoMethodDefinition: aTDMethodDefinition
  "add method to theBehavior ... use the category from aTDMethodDefinition"

  | method source category |
  method := self method.
  source := method sourceString.
  category := aTDMethodDefinition method inClass categoryOfSelector: aTDMethodDefinition method selector.
  aTDMethodDefinition theBehavior compile: source classified: category.
  ^ true