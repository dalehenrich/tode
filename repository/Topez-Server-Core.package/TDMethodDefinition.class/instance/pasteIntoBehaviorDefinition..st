as yet unclassified
pasteIntoBehaviorDefinition: aBehaviorDefinition
  "add method to aBehavior"

  | method source category |
  method := self method.
  source := method sourceString.
  category := self methodCategory.
  aBehaviorDefinition theBehavior
    compile: source withGemstoneLineEndings
    classified: category.
  ^ true