api
executeString: aString receiver: rcvrProxy
    | result |
    result := self doInSession: [ :ignored | self evaluate: aString in: nil to: rcvrProxy ].
    ^ result
        topez: self;
        signalNotifications;
        yourself