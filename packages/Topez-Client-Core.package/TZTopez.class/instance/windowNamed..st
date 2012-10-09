accessing
windowNamed: aSymbol
    ^ self namedWindows at: aSymbol ifAbsent: [ self namedWindows at: aSymbol put: self nextAvailableWindowId ]