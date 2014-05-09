menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ self operationsMenuActionSpec , {#('-')}
    , {{('Method' -> self methodMenuActionSpec)}} , {#('-')}
    , self standardMenuActionSpec