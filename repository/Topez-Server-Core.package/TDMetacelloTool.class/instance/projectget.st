project
projectget
  "
  project get <project-name>
"

  | projectName |
  self getSubcommandOptsMixedLongShort: {}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project get` for details.' ].
  ^ self projectGet: projectName