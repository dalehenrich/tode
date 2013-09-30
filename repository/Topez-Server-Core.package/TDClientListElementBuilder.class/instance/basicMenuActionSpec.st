as yet unclassified
basicMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {{('Object' -> self objectMenuActionSpec)}.
  {('Window' -> self windowMenuActionSpec)}}