as yet unclassified
childrenAndNamesDo: aBlock
  ^ (self contents values sorted: [ :a :b | a name <= b name ])
    do: [ :child | 
      child topez: self topez.
      aBlock value: child value: child renderNameText ]