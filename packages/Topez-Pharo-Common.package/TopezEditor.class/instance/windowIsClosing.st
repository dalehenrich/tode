accessing
windowIsClosing
    windowId ifNil: [ ^ self ].
    topez ifNil: [ ^ self ].
    topez status windowAt: windowId put: nil