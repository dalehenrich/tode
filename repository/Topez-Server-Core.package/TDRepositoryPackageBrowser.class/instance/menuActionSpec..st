tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse versions' nil #'browseVersions:selectedIndex:').
  #('-')} , self standardMenuActionSpec