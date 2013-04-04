finalization
unregisterClientObjectForwarder: aClientObject
    | oopType |
    oopType := self clientForwarderCache keyAtValue: aClientObject.
    self clientForwarderCache removeKey: oopType.
    ^ oopType