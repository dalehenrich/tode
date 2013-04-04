as yet unclassified
childNamed: childName ifAbsent: absentBlock
  | child |
  child := self
    resolveSpecialChildNamed: childName
    ifAbsent: [ 
      | node |
      node := self elementBlock value: self value: childName value: absentBlock.
      node ~~ nil
        ifTrue: [ 
          node
            parent: self;
            yourself ] ].
  ^ child ~~ nil
    ifTrue: [ 
      child
        topez: self topez;
        yourself ]