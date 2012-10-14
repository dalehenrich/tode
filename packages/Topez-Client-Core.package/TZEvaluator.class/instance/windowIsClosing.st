accessing
windowIsClosing
    | tpz |
    topez ifNil: [ ^ self ].
    tpz := topez.
    topez := nil.
    tpz windowIsClosing