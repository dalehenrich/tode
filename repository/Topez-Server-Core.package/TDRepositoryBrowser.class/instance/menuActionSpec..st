tools
menuActionSpec: miniTool
  | workingCopyMenuSpec |
  theMiniTool := miniTool.
  workingCopyMenuSpec := #().
  self workingCopy
    ifNotNil: [ 
      workingCopyMenuSpec := {#('changes' nil #'workingCopyDiff:selectedIndex:').
      #('save' nil #'workingCopySave:selectedIndex:').
      #('-')} ].
  ^ workingCopyMenuSpec
    ,
      {#('set user/password' nil #'setUserPassword:selectedIndex:').
      #('add to package' nil #'addToPackage:selectedIndex:').
      #('packages' nil #'browseRepositoryPackages:selectedIndex:').
      #('remove repository' nil #'removeRepository:selectedIndex:').
      #('flush' nil #'flushRepositoryCache:selectedIndex:').
      #('-')}
    , self standardMenuActionSpec