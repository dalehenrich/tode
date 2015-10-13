menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ self classMenuActionSpec , {#('-')}
    ,
      {{('Method'
        ->
          (self methodMenuActionSpec , {#('-')}
            ,
              {#('batch edit' nil #'batchEditMethodsMenuAction:selectionIndex:' nil #'forMethod' false)}))}}
    , {#('-')} , self standardMenuActionSpec