as yet unclassified
selectedDefinitionSource
  | definition |
  definition := self selectedDefinition.
  ^ definition isNil
    ifTrue: [ '' ]
    ifFalse: [ definition source ]