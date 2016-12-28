login
postLogin
  "pick up the UserId where tODE is installed, so the object serializer can do class lookups"

  "use defaultSerializer to set todeUserId, then use defaultExternalSerializer"

  | ston id |
  ston := self topezClientForwarder perform: #'getTodeUserId'.
  self todeUserId: (self objectSerializer fromString: ston).
  objectSerializer := TodeObjectSerializer
    serializeExternalUsing: self objectSerializer protocolSignatureArray
    topez: self.
  System commit.
  super postLogin