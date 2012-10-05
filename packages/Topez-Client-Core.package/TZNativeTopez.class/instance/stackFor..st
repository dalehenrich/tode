api
stackFor: contextProxy
    | stack |
    stack := (self session stackFor: contextProxy) collect: [ :each | each asTopezProxy ].
    ^ stack asTopezProxy