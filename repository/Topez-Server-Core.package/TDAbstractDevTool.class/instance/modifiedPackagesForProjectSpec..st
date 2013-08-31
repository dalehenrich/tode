as yet unclassified
modifiedPackagesForProjectSpec: projectSpec
  ^ (self packagesForProjectSpec: projectSpec)
    select: [ :pkg | 
      | wc |
      wc := pkg workingCopy.
      wc == nil
        ifTrue: [ false ]
        ifFalse: [ wc modified ] ]