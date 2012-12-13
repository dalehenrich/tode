as yet unclassified
childrenDo: aBlock
    ^ (self listBlock value: self) do: [ :childName | aBlock value: (self childNamed: childName ifAbsent: [  ]) ]