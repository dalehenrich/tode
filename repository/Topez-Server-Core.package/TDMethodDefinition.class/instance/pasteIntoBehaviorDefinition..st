as yet unclassified
pasteIntoBehaviorDefinition: aBehaviorDefinition
  "add method to aBehavior"

  | method source category |
  method := self method.
  source := method sourceString.
  category := method inClass categoryOfSelector: self selector.
  category ifNil: [ category := ClassOrganizer default ].
  aBehaviorDefinition theBehavior
    compile: source withGemstoneLineEndings
    classified: category.
  ^ true