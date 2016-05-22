menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self classMenuActionSpec , {#('-')}
    , {#('new method' $o #'newMethodTemplateMenuAction:selectionIndex:')}
    , {#('-')} , self methodMenuActionSpec , {#('-')}
    , self standardMenuActionSpec