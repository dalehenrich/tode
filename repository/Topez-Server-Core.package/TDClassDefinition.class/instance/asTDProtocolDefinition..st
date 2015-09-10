converting
asTDProtocolDefinition: protocol
  ^ (TDProtocolDefinition
    className: self className
    isMeta: self isMeta
    protocol: protocol)
    username: self username;
    yourself