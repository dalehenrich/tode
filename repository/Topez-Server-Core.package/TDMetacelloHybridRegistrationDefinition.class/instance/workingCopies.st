accessing
workingCopies
  "should get the workingCopies from the baseline and include the configurationOf"

  | workingCopies |
  workingCopies := {}.
  {(self baselineProjectSpec).
  (self projectSpec)}
    do: [ :projectSpec | 
      | version |
      version := projectSpec versionOrNil.
      version
        ifNotNil: [ 
          version packages do: [ :pkg | workingCopies add: pkg workingCopy ].
          workingCopies add: projectSpec projectPackage workingCopy ] ].
  ^ workingCopies reject: [ :each | each isNil ]