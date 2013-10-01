menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('browse definitions' $E #'browsePackageOrConfigurationMenuAction:selectionIndex:').
  #('browse tests' $T #'browsePackageOrConfigurationTestsMenuAction:selectionIndex:')}
    , self standardMenuActionSpec