tools
standardMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {{('Edit' -> self editMenuActionSpec)}.
  {('Object' -> self builder objectMenuActionSpec)}.
  {('Window' -> self builder windowMenuActionSpec)}}