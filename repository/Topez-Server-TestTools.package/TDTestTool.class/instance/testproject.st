as yet unclassified
testproject
  "test [--batch] project <configuration-base-name>"

  self getSubcommandOptsMixedLongShort: {}.
  ^ self
    testproject:
      (subArguments
        at: 1
        ifAbsent: [ 
          self
            error:
              'Missing required argument <configuration-base-name>. See `man test` for details.' ])