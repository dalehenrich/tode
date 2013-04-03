as yet unclassified
childrenAndNamesDo: aBlock
  ^ (self contents values sorted: [ :a :b | a name <= b name ])
    do: [ :child | aBlock value: child value: child renderNameText ]