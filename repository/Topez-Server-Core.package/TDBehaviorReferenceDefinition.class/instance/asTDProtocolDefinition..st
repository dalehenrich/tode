converting
asTDProtocolDefinition: protocol
  ^ (TDBehaviorReferenceProtocolDefinition
    behavior: self theBehavior
    protocol: protocol)
    appEnv: self appEnv;
    yourself