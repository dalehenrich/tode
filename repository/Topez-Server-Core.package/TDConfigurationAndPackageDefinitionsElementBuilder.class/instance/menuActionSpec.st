as yet unclassified
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  ^ {#('browse definitions' $E #'browsePackageOrConfiguration').
  #('browse tests' $T #'browsePackageOrConfigurationTests')}
    , self standardMenuActionSpec