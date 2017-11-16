converting
asTDClassDefinition
  ^ (TDClassHistoryDefinition
    className: self className
    classHistoryIndex: self classHistoryIndex)
    appEnv: self appEnv;
    yourself