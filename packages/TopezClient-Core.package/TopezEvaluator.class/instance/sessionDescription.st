session management
sessionDescription
    sessionDescription ifNil: [ self defaultSessionDescription ].
    ^ sessionDescription