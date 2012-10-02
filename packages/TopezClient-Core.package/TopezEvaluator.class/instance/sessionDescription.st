accessing
sessionDescription
    sessionDescription ifNil: [ self defaultSessionDescription ].
    ^ sessionDescription