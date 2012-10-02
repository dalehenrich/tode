accessing
client
    client ifNil: [ client := self initClient ].
    ^ client