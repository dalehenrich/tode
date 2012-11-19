accessing
windowIsClosing
    | status |
    windowStatus ifNil: [ ^ self ].
    status := windowStatus.
    windowStatus := nil.
    status windowIsClosing