api
evaluate: aString in: ctxtProxy to: rcvrProxy
    [ 
    ^ rcvrProxy asTopezNative class evaluatorClass new
        evaluate: aString
        in: ctxtProxy asTopezNative
        to: rcvrProxy asTopezNative
        notifying: nil
        ifFail: [ 
            self halt.
            ^ nil ]
        logged: false ]
        on: OutOfScopeNotification
        do: [ :ex | ex resume: true ]