tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse' nil #'workingCopyBrowse:selectedIndex:').
  #('history' nil #'workingCopyHistory:selectedIndex:').
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