accessing
windowIsClosing
    topez ifNil: [ ^ self ].
    self status windowAt: 1 put: nil.
    topez windowIsClosing