as yet unclassified
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('local def' $d #'selectLocalDefinition').
  #('edit def' $e #'selectEditDefinition').
  #('remote def' $r #'selectRemoveDefinition').
  #('-').
  #('do merge' $j #'doMerge').
  #('-').
  #('toggle diff' $t #'toggleDiff')} , self basicMenuActionSpec