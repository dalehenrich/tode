as yet unclassified
pasteIntoBehaviorDefinition: aBehaviorDefinition
  "add method to aBehavior"

  | method source category |
  method := self method.
  source := method sourceString.
  category := self methodCategory.
  self appEnv
    compile: source withGemstoneLineEndings
    inBehavior: aBehaviorDefinition theBehavior
    classified: category.
  ^ true