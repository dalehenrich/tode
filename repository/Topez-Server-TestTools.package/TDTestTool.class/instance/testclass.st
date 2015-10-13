as yet unclassified
testclass
  "test [--batch] class <class-name> [ <class-name> ... ]"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self testclass: subArguments