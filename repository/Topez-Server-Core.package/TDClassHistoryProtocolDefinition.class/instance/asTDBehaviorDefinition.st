converting
asTDBehaviorDefinition
  ^ (TDBehaviorHistoryDefinition
    className: self className
    isMeta: self isMeta
    classHistoryIndex: self classHistoryIndex)
    username: self username;
    yourself