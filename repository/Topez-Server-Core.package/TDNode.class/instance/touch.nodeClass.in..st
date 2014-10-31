as yet unclassified
touch: destinationPath nodeClass: nodeClass in: baseNode
  | path newName destinationNode |
  path := destinationPath findTokens: '/'.
  newName := path last.
  ^ self
    touch: destinationPath
    node:
      (nodeClass new
        name: newName;
        yourself)
    in: baseNode