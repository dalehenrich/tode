accessing
stylerClass
    self stylingActive
        ifFalse: [ ^ NullTextStyler ].
    ^ self editor stylerClass