as yet unclassified
mergeSource: aStringOrText
  | definition |
  definition := self selectedDefinition.
  editDefinition := MCMethodDefinition
    className: definition className
    selector: definition selector
    category: definition category
    timeStamp: ''
    source: aStringOrText asString.
  self selectEdit