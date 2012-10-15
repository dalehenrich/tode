menu messages
implementorsOf: aSelector
    "Open an implementors browser on the given selector"

    self halt.
    (model systemNavigation allImplementorsOf: aSelector) isEmpty
        ifTrue: [ self internalCallToBrowse: aSelector ]
        ifFalse: [ model systemNavigation browseAllImplementorsOf: aSelector ]