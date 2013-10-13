tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse' nil #'workingCopyBrowse:selectedIndex:').
  #('changes' nil #'workingCopyDiff:selectedIndex:').
  #('history' nil #'workingCopyHistory:selectedIndex:').
  #('-').
  #('recompile' nil #'workingCopyRecompile:selectedIndex:').
  #('revert' nil #'workingCopyRevert:selectedIndex:').
  #('-').
  #('delete' nil #'workingDelete:selectedIndex:').
  #('unload' nil #'workingUnload:selectedIndex:').
  #('-')} , miniTool builder basicMenuActionSpec