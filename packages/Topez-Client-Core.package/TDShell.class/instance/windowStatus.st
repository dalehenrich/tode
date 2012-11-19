accessing
windowStatus
    windowStatus
        ifNil: [ 
            | windowId |
            windowStatus := TDWindowStatus new.
            windowId := windowStatus windowIdNamed: #'shell'.
            windowStatus windowAt: windowId put: self shellWindow ].
    ^ windowStatus