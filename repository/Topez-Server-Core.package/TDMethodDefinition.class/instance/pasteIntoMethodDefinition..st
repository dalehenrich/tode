as yet unclassified
pasteIntoMethodDefinition: aTDMethodDefinition
  "add method to theBehavior ... use the category from aTDMethodDefinition"

  | method source category |
  method := self method.
  source := method sourceString.
  category := self methodCategory.
  aTDMethodDefinition theBehavior
    compile: source withGemstoneLineEndings
    classified: category.
  ^ true