menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  | menuSpec |
  menuSpec := #('inspect' nil #'setInspectBuilderAspectMenuAction:selectionIndex:').
  ^ {menuSpec.
  #('-')} , self basicMenuActionSpec