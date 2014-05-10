menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ self operationsMenuActionSpec , {#('-')} , self standardMenuActionSpec