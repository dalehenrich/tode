as yet unclassified
testpackage
  "test [--batch] package <package-name>"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self testpackage: (subArguments at: 1)