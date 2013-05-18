as yet unclassified
mmDiffForProjects: projectSpecs on: stream
  | patches |
  patches := Array new.
  projectSpecs
    do: [ :projectSpec | 
      stream
        nextPutAll:
            ('____________________ ' , projectSpec name , ' ____________________') asText
                allBold;
        cr.
      self
        patchesForProject: projectSpec
        do: [ :wc :patch | 
          stream
            nextPutAll:
                ('==================== ' , wc packageName , ' ====================') asText
                    allBold;
            cr.
          self diffPatch: patch forWorkingCopy: wc on: stream.
          patches
            add:
              {wc.
              patch}.
          stream cr ] ].
  ^ patches