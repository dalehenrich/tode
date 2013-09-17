as yet unclassified
mmDiffForProjects: projectSpecs on: stream diffDirty: diffDirty
  | patches |
  patches := OrderedCollection new.
  projectSpecs
    do: [ :projectSpec | 
      | packageSpecs workingCopies |
      stream
        nextPutAll:
            ('____________________ ' , projectSpec name , ' ____________________') asText
                allBold;
        cr.
      packageSpecs := self packagesForProjectSpec: projectSpec.
      workingCopies := (packageSpecs
        collect: [ :packageSpec | packageSpec workingCopy ])
        select: [ :wc | wc notNil ].
      diffDirty
        ifTrue: [ workingCopies := workingCopies select: [ :wc | wc modified ] ].
      workingCopies
        do: [ :wc | 
          | patch |
          patch := self mmDiffForWorkingCopy: wc on: stream.
          patch isEmpty
            ifTrue: [ wc modified: false ]
            ifFalse: [ 
              patches
                add:
                  {wc.
                  patch}.
              stream cr ] ] ].
  ^ patches