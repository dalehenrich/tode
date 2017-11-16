menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ super menuActionSpec , {#('-')}
    , {{('Loose Methods' -> self looseMethodMenuActionSpec)}}