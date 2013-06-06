accessing
windowAt: windowId put: window
    (window == nil and: [ windowId == activeWindowIndex ])
        ifTrue: [ activeWindowIndex := 0 ].
    windows at: windowId put: window