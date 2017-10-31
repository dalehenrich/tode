converting
asTDProtocolDefinition: protocol
  ^ (TDProtocolDefinition
    className: self className
    isMeta: self isMeta
    protocol: protocol)
    appEnv: self appEnv;
    yourself