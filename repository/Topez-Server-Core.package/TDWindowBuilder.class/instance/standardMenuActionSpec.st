menu action specs
standardMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {{('Edit' -> self editMenuActionSpec)}.
  #('-').
  {('Object' -> self objectMenuActionSpec)}.
  #('-').
  {('Window' -> self windowMenuActionSpec)}}