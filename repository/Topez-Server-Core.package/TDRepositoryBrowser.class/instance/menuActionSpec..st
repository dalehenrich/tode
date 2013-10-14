tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('packages' nil #'browseRepositoryPackages:selectedIndex:').
  #('remove repository' nil #'removeRepository:selectedIndex:').
  #('flush' nil #'flushRepositoryCache:selectedIndex:').
  #('-')} , self standardMenuActionSpec