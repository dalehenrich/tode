accessing
windowIsClosing
    (windows select: [ :each | each notNil ])
        do: [ :window | 
            window model windowIsClosing.
            window delete ].
    windows detect: [ :window | window notNil ] ifNone: [ ^ self ]