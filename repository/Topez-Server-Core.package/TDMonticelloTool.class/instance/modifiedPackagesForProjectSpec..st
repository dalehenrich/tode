as yet unclassified
modifiedPackagesForProjectSpec: projectSpec
  ^ projectSpec version packages
    select: [ :pkg | 
      | wc |
      wc := pkg workingCopy.
      wc == nil
        ifTrue: [ false ]
        ifFalse: [ wc modified ] ]