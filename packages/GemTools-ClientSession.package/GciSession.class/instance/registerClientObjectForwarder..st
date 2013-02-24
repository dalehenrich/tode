finalization
registerClientObjectForwarder: aClientObject
  | oopType |
  oopType := self rawExecuteStringNB: 'ClientForwarder new' envId: 0.
  self clientForwarderCache at: oopType put: aClientObject.
  ^ oopType