converting
asTDProtocolDefinition: protocol
  ^ (TDClassHistoryProtocolDefinition
    className: self className
    isMeta: self isMeta
    protocol: protocol
    classHistoryIndex: self classHistoryIndex)
    username: self username;
    yourself