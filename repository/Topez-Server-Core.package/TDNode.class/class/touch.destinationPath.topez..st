touch
touch: signature destinationPath: destinationPath topez: topez
  ^ topez currentNode
    touch: destinationPath
    nodeClass: self
    in: (topez baseNodeFor: destinationPath)