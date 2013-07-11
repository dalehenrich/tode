as yet unclassified
mmDiffForProjects: projectSpecs on: stream
  | patches |
  patches := OrderedCollection new.
  projectSpecs
    do: [ :projectSpec | 
      | packageSpecs |
      stream
        nextPutAll:
            ('____________________ ' , projectSpec name , ' ____________________') asText
                allBold;
        cr.
      packageSpecs := self packagesForProjectSpec: projectSpec.
      packageSpecs
        do: [ :packageSpec | 
          | patch |
          packageSpec workingCopy
            ifNotNil: [ :wc | 
              patch := self mmDiffForWorkingCopy: wc on: stream.
              patch isEmpty
                ifFalse: [ 
                  patches
                    add:
                      {wc.
                      patch}.
                  stream cr ] ] ] ].
  ^ patches