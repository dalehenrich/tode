accessing
lookup: aPath ifAbsent: absentBlock
  ^ (self baseNodeFor: aPath) lookup: aPath with: self ifAbsent: absentBlock