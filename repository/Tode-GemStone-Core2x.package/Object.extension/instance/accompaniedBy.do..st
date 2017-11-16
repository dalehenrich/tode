*tode-gemstone-core2x-dependents access
accompaniedBy: anObj do: aBlock
  "Evaluate the two argument block aBlock with anObj and each element of
  the receiver.  Return the receiver. "

  self do: [ :elem | aBlock value: anObj value: elem ]