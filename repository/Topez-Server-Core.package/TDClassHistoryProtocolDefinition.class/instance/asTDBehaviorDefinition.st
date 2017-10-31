converting
asTDBehaviorDefinition
  ^ (TDBehaviorHistoryDefinition
    className: self className
    isMeta: self isMeta
    classHistoryIndex: self classHistoryIndex)
    appEnv: self appEnv;
    yourself