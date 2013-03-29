accessing printing
classesAt: aSymbol
    | results |
    results := OrderedCollection new.
    self keysAndValuesDo: [ :className :dict | dict at: aSymbol ifPresent: [ results add: className ] ].
    ^ results