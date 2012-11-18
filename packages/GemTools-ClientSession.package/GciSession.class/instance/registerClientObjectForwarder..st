finalization
registerClientObjectForwarder: aClientObject
    | oopType |
    oopType := self rawExecuteStringNB: 'ClientForwarder new'.
    self clientForwarderCache at: oopType put: aClientObject.
    ^ oopType