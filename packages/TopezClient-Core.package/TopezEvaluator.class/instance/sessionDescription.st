session management
sessionDescription
    sessionDescription ifNil: [ sessionDescription := self defaultSessionDescription ].
    ^ sessionDescription