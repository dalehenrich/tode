menu action specs
standardMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self smalltalkMenuActionSpec , {#('-')}
    , {{('Text' -> self textMenuActionSpec)}} , {#('-')}
    , self editMenuActionSpec , {#('-')}
    , {{('Window' -> self windowMenuActionSpec)}} , {#('-')}
    , self saveMenuActionSpec