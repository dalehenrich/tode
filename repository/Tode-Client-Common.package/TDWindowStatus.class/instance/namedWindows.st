accessing
namedWindows
    namedWindows ifNil: [ namedWindows := Dictionary new ].
    ^ namedWindows