as yet unclassified
methodDefinitionFor: selector isMeta: isMeta
  ^ (TDMethodDefinition
    className: self className
    isMeta: isMeta
    selector: selector)
    appEnv: self appEnv;
    yourself