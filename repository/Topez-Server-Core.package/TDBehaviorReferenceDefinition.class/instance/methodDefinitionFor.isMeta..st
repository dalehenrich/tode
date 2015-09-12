as yet unclassified
methodDefinitionFor: selector isMeta: aBool
  ^ (TDMethodHistoryDefinition new
    theBehavior: self theBehavior;
    isMeta: self theBehavior isMeta;
    selector: selector)
    username: self username;
    yourself