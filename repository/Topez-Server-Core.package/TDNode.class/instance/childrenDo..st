as yet unclassified
childrenDo: aBlock
    ^ (self contents values sorted: [ :a :b | a name <= b name ]) do: aBlock