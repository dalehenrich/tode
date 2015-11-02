(as yet unclassified)
standardMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self smalltalkMenuActionSpec , {#('-')}
    , {{('Method' -> self methodMenuActionSpec)}} , {#('-')}
    , {{('Browse' -> self searchMenuActionSpec)}} , {#('-')}
    , self editMenuActionSpec , {#('-')}
    , {{('Text' -> self textMenuActionSpec)}} , {#('-')}
    , {{('Object' -> self objectMenuActionSpec)}} , {#('-')}
    , {{('Window' -> self windowMenuActionSpec)}} , {#('-')}
    , self saveMenuActionSpec