writing
writePackageOperations: packageOperationsMap
  packageOperationsMap isEmpty
    ifTrue: [ 
      stream
        nextPutAll: '... no changes';
        cr.
      ^ self ].
  stream
    nextPutAll: 'Changes for:' asText allBold;
    cr.
  packageOperationsMap
    keysAndValuesDo: [ :packageName :ignored | 
      stream
        tab;
        nextPutAll: packageName asText allBold;
        cr ].
  packageOperationsMap
    keysAndValuesDo: [ :packageName :operations | 
      stream
        nextPutAll:
            ('==================== ' , packageName
                , ' (-) --> image (+)  ====================') asText allBold;
        cr.
      self writeOperations: operations ]