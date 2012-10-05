debugging
stackFor: execeptionProxy
    | stack |
    stack := (self session stackFor: execeptionProxy) collect: [ :each | each asTopezProxy ].
    ^ stack asTopezProxy