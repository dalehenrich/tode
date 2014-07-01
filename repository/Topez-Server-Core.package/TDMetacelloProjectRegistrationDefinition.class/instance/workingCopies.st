accessing
workingCopies
  | version workingCopies |
  self isLoadedInImage
    ifTrue: [ 
      version := self projectSpec version.
      workingCopies := version packages collect: [ :pkg | pkg workingCopy ] ]
    ifFalse: [ workingCopies := {} ].
  workingCopies add: self projectSpec projectPackage workingCopy.
  self hybridBaselineProjectSpec
    ifNotNil: [ :baselineProjectSpec | workingCopies add: baselineProjectSpec projectPackage workingCopy ].
  ^ workingCopies reject: [ :each | each isNil ]