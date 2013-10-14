tools
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('adopt' nil #'adoptVersion:selectedIndex').
  #('browse' nil #'browseVersion:selectedIndex').
  #('changes' nil #'versionChanges:selectedIndex').
  #('history' nil #'versionHistory:selectedIndex').
  #('load' nil #'loadVersion:selectedIndex').
  #('merge' nil #'mergeVersion:selectedIndex').
  #('-')} , self standardMenuActionSpec