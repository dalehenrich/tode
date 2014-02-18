menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('inspect' nil #'setInspectBuilderAspectMenuAction:selectionIndex:').
  #('view' nil #'setViewBuilderAspectMenuAction:selectionIndex:').
  #('-')} , self basicMenuActionSpec