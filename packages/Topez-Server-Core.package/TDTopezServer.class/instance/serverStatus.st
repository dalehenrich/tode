accessing
serverStatus
    serverStatus ifNil: [ serverStatus := TDServerStatus new ].
    ^ serverStatus