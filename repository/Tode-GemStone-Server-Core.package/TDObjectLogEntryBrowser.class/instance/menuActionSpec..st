menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('attach' nil #'attachContinuation:selectedIndex:' nil #'continuation' false).
  #('-')} , self standardMenuActionSpec