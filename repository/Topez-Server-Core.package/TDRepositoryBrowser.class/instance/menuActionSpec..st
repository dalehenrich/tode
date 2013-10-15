tools
menuActionSpec: miniTool
  | workingCopyMenuSpec |
  theMiniTool := miniTool.
  workingCopyMenuSpec := #().
  self workingCopy
    ifNotNil: [ 
      workingCopyMenuSpec := {#('changes' nil #'workingCopyDiff:selectedIndex:').
      #('-')} ].
  ^ workingCopyMenuSpec
    ,
      {#('packages' nil #'browseRepositoryPackages:selectedIndex:').
      #('remove repository' nil #'removeRepository:selectedIndex:').
      #('flush' nil #'flushRepositoryCache:selectedIndex:').
      #('-')}
    , self standardMenuActionSpec