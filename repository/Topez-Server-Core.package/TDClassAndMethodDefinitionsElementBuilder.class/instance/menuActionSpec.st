as yet unclassified
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self methodMenuActionSpec , {#('-')} , self standardMenuActionSpec