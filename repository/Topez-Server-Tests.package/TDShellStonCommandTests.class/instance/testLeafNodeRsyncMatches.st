tests
testLeafNodeRsyncMatches
  self standardLeafNodes
    do: [ :sourceNode | self validateRsyncMatchForNode: sourceNode ]