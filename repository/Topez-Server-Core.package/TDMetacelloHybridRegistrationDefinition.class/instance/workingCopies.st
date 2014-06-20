accessing
workingCopies
  "should get the workingCopies from the baseline and include the configurationOf"

  | workingCopies |
  self isLoadedInImage
    ifFalse: [ ^ #() ].
  workingCopies := {}.
  {(self baselineProjectSpec).
  (self projectSpec)}
    do: [ :projectSpec | 
      | version |
      version := projectSpec version.
      version packages do: [ :pkg | workingCopies add: pkg workingCopy ].
      workingCopies add: projectSpec projectPackage workingCopy ].
  ^ workingCopies reject: [ :each | each isNil ]