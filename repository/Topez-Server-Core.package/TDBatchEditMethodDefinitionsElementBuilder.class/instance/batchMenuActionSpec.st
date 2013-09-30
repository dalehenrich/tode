as yet unclassified
batchMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('next match' $g #'nextMatch').
  #('replace' $j #'performReplace')}