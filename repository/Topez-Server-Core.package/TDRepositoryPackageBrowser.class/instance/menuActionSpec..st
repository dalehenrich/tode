tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('browse versions' nil #'browseVersions:selectedIndex:').
  #('save package' nil #'savePackage:selectedIndex:').
  #('-')} , self standardMenuActionSpec