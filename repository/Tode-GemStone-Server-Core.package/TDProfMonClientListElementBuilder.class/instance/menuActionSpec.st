menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('sort by tally' nil #'sortByTallyMenuAction:').
  #('sort by total' nil #'sortByTotalMenuAction:').
  #('-')} , self basicMenuActionSpec