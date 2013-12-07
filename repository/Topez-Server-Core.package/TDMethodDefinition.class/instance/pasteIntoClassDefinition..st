as yet unclassified
pasteIntoClassDefinition: aTDClassDefinition
  "add method to theClass ... use the category of target method"

  | method source category |
  method := self method.
  source := method sourceString.
  category := self methodCategory.
  aTDClassDefinition theClass
    compile: source withGemstoneLineEndings
    classified: category.
  ^ true