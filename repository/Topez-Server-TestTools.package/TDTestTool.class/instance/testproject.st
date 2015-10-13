as yet unclassified
testproject
  "test [--batch] project <configuration-base-name>"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self testproject: (subArguments at: 1)