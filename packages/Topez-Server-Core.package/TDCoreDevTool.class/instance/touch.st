as yet unclassified
touch
    | destinationPath |
    destinationPath := tokens at: 2.
    ^ topez currentNode touch: destinationPath in: (topez baseNodeFor: destinationPath)