session management
logout
    | tpz |
    tpz := topez.
    super logout.
    tpz ifNil: [ ^ self ].
    topez := nil.
    tpz logout