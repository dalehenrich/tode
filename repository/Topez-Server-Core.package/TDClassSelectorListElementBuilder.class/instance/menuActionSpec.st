as yet unclassified
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  | toggleLabel |
  toggleLabel := 'toggle protocol'.
  ^ self methodMenuActionSpec
    ,
      {#('-').
      #('new method' $o #'newMethodTemplate').
      #('toggle protocol' $t #'toggleEnableProtocol').
      #('-')}
    , self standardMenuActionSpec