tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('packages' nil #'browseRepositoryPackages:selectedIndex:').
  #('flush' nil #'flushRepositoryCache:selectedIndex:').
  #('-')} , miniTool builder basicMenuActionSpec