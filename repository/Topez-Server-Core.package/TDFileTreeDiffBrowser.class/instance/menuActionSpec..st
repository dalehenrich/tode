menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ self operationsMenuActionSpec
    ,
      {#('-').
      #('toggle view st only' nil #'toggleViewStOnly:selectionIndex:').
      #('set (clear) class filter' nil #'selectClassOperations:selectionIndex:').
      #('-')}
    , {{('Method' -> self methodMenuActionSpec)}} , {#('-')}
    , self standardMenuActionSpec