writing
writePackageOperations: packageOperationsMap
  packageOperationsMap
    keysAndValuesDo: [ :packageName :operations | 
      stream
        nextPutAll:
            ('==================== ' , packageName
                , ' (-) --> image (+)  ====================') asText allBold;
        cr.
      self writeOperations: operations ]