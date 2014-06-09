menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse' nil #'workingCopyBrowse:selectedIndex:').
  #('-').
  #('create new package' nil #'createNewPackage:selectedIndex:').
  #('-').
  {('History'
    ->
      {#('git' nil #'gitPackageHistory:selectedIndex:').
      #('monticello' nil #'workingCopyHistory:selectedIndex:')})}.
  #('-').
  #('repository group' nil #'workingCopyRepositoryGroup:selectedIndex:').
  #('repositories' nil #'defaultRepositoryGroup:selectedIndex:').
  #('-').
  #('recompile' nil #'workingCopyRecompile:selectedIndex:').
  #('revert' nil #'workingCopyRevert:selectedIndex:').
  #('-').
  #('delete' nil #'workingDelete:selectedIndex:').
  #('unload' nil #'workingUnload:selectedIndex:').
  #('-')} , self standardMenuActionSpec