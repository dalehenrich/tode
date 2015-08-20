menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self protocolMenuActionSpec
    ,
      {#('-').
      #('new method' $o #'newMethodTemplateMenuAction:selectionIndex:').
      #('-')}
    , self standardMenuActionSpec