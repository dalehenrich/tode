converting
asTDProtocolDefinition: protocol
  ^ (TDBehaviorReferenceProtocolDefinition
    behavior: self theBehavior
    protocol: protocol)
    username: self username;
    yourself