menu action specs
standardMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self smalltalkMenuActionSpec , {#('-')}
    , {{('Search' -> self searchMenuActionSpec)}} , {#('-')}
    , self editMenuActionSpec , {#('-')}
    , {{('Text' -> self textMenuActionSpec)}} , {#('-')}
    , {{('Window' -> self windowMenuActionSpec)}} , {#('-')}
    , self saveMenuActionSpec