find
findpackages
  "
  find packages
"

  self getSubcommandOptsMixedLongShort: {}.
  TDPackageList reset.
  ^ TDPackageList current
    definitionList;
    yourself