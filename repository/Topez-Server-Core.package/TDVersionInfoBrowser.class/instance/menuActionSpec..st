tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('diff vs workingCopy' nil #'versionInfoDiffVsWorkingCopy:selectedIndex:').
  #('select' nil #'versionInfoSelect:selectedIndex:').
  #('diff vs selection' nil #'versionInfoDiffVsSelection:selectedIndex:').
  #('-')} , self standardMenuActionSpec