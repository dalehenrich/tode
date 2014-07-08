menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  | toggleLabel |
  toggleLabel := 'toggle protocol'.
  ^ self classMenuActionSpec , {#('-')} , self methodMenuActionSpec , {#('-')}
    , self protocolMenuActionSpec
    ,
      {#('-').
      #('new method' $o #'newMethodTemplateMenuAction:selectionIndex:').
      #('toggle protocol' $t #'toggleEnableProtocolMenuAction:selectionIndex:').
      #('-')}
    , self standardMenuActionSpec