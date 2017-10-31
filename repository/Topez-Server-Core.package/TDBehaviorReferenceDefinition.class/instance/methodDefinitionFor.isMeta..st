as yet unclassified
methodDefinitionFor: selector isMeta: aBool
  ^ (TDMethodHistoryDefinition new
    className: self className;
    theBehavior: self theBehavior;
    isMeta: self theBehavior isMeta;
    selector: selector)
    appEnv: self appEnv;
    yourself