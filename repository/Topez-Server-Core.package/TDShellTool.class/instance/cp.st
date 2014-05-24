commands
cp
    | destinationPath |
    destinationPath := tokens at: 3.
    ^ (topez lookup: (tokens at: 2)) cp: destinationPath in: (topez baseNodeFor: destinationPath)