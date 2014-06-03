menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('debug continuation' nil #'attachContinuation:selectedIndex:' nil #'continuation' false).
  #('-')} , self standardMenuActionSpec