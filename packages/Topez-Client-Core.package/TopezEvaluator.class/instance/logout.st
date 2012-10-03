session management
logout
    topezClient ifNil: [ ^ self ].
    topezClient logout