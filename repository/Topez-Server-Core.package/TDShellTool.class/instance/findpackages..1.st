find
findpackages
  "
  find packages
"

  self getSubcommandOptsMixedLongShort: {}.
  TDPackageList reset.
  ^ self findPackages