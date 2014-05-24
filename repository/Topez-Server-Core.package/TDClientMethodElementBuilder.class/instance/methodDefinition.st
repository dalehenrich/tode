as yet unclassified
methodDefinition
  ^ TDMethodDefinition
    className: self theClass name
    isMeta: self theBehavior isMeta
    selector: self method selector asSymbol