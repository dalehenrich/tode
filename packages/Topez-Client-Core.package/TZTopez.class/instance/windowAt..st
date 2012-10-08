editting
windowAt: windowId
    | window |
    (window := self status windowAt: windowId)
        ifNil: [ 
            window := TopezEditor new
                topez: self;
                open.
            self status windowAt: windowId put: window ].
    ^ window