testing
isDirty
  | version wcs |
  version := self registration projectSpec version.
  wcs := version packages collect: [ :pkg | pkg workingCopy ].
  wcs
    do: [ :wc | 
      wc
        ifNotNil: [ 
          wc modified
            ifTrue: [ ^ true ] ] ].
  ^ false