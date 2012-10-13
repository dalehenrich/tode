accessing
windowIsClosing
    | windowName |
    windowId ifNil: [ ^ self ].
    topez ifNil: [ ^ self ].
    windowName := topez status namedWindows keyAtValue: windowId ifAbsent: [  ].
    windowName ifNotNil: [ topez status namedWindows removeKey: windowName ].
    topez status windowAt: windowId put: nil