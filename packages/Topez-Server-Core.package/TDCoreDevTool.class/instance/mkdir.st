as yet unclassified
mkdir
    | destinationPath |
    destinationPath := tokens at: 2.
    ^ topez currentNode mkdir: destinationPath in: (topez baseNodeFor: destinationPath)