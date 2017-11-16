as yet unclassified
pasteIntoClassDefinition: aTDClassDefinition
  "add method to theClass ... use the category of target method"

  | method source category |
  method := self method.
  source := method sourceString.
  category := self methodCategory.
  self appEnv
    compile: source withGemstoneLineEndings
    inBehavior: aTDClassDefinition theClass
    classified: category.
  ^ true