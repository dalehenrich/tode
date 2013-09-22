as yet unclassified
methodDefinitionFor: selector
  ^ TDMethodDefinition
    className: self theClass name
    isMeta: self theBehavior isMeta
    selector: selector