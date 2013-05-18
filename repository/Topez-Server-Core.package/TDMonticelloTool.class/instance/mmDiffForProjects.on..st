as yet unclassified
mmDiffForProjects: projectSpecs on: stream
  | patches |
  patches := Array new.
  projectSpecs
    do: [ :projectSpec | 
      | packageSpecs |
      stream
        nextPutAll:
            ('____________________ ' , projectSpec name , ' ____________________') asText
                allBold;
        cr.
      packageSpecs := self modifiedPackagesForProjectSpec: projectSpec.
      packageSpecs
        do: [ :packageSpec | 
          | wc patch |
          wc := packageSpec workingCopy.
          patch := self mmDiffForWorkingCopy: wc on: stream.
          patches
            add:
              {wc.
              patch}.
          stream cr ] ].
  ^ patches