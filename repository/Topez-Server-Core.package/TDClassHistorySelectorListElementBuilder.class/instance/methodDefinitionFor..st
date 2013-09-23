as yet unclassified
methodDefinitionFor: selector
  ^ TDMethodHistoryDefinition new
    theBehavior: self theBehavior;
    isMeta: self theBehavior isMeta;
    selector: selector