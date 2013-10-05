as yet unclassified
methodDefinitionFor: selector isMeta: isMeta
  ^ (TDMethodDefinition
    className: self className
    isMeta: isMeta
    selector: selector)
    username: self username;
    yourself