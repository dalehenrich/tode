menu action specs
standardMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self smalltalkMenuActionSpec , {#('-')}
    , {{('Method' -> self methodMenuActionSpec)}} , {#('-')}
    , {{('Browse' -> self searchMenuActionSpec)}} , {#('-')}
    , self editMenuActionSpec , {#('-')}
    , {{('Text' -> self textMenuActionSpec)}} , {#('-')}
    , {{('Window' -> self windowMenuActionSpec)}} , {#('-')}
    , self saveMenuActionSpec