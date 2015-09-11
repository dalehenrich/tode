accessing
methodDefinitionFor: selector isMeta: isMeta
  ^ (TDClassHistoryMethodDefinition
    className: self className
    isMeta: isMeta
    selector: selector
    classHistoryIndex: self classHistoryIndex)
    username: self username;
    yourself