as yet unclassified
testpackage
  "test [--batch] package <package-name>"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self
    testpackage:
      (subArguments
        at: 1
        ifAbsent: [ 
          self
            error:
              'Missing required argument <package-name>. See `man test` for details.' ])