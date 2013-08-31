as yet unclassified
cymDiffProject: projectSpec to: cypressRepository on: stream
  | patches packageSpecs |
  stream
    nextPutAll:
        ('____________________ ' , projectSpec name , ' ____________________') asText
            allBold;
    cr.
  patches := OrderedCollection new.
  packageSpecs := self packagesForProjectSpec: projectSpec.
  packageSpecs
    do: [ :packageSpec | 
      | patch |
      packageSpec workingCopy
        ifNotNil: [ :ignored | 
          patch := self cypDiffPackage: packageSpec name to: cypressRepository on: stream.
          patch isEmpty
            ifFalse: [ 
              patches
                add:
                  {packageSpec.
                  patch} ] ] ].
  ^ patches