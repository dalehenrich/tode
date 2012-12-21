as yet unclassified
mv
    | destinationPath |
    destinationPath := tokens at: 3.
    ^ (topez lookup: (tokens at: 2)) mv: destinationPath in: (topez baseNodeFor: destinationPath)