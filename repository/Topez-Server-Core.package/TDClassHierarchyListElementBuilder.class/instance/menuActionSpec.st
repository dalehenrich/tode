menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('create accessors' nil #'createAccessorsMenuAction:selectionIndex:').
  #('-').
  #('git history' nil #'browseGitClassHistoryMenuAction:selectionIndex:').
  #('-')} , self standardMenuActionSpec