project
projectcompare
  "
  project compare [--commit=<commitish>] <project-name>
"

  | projectName commitOrNil |
  self getSubcommandOptsMixedLongShort: {#('commit' nil #'required')}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project compare` for details.' ].
  subOptions at: 'commit' ifPresent: [ :arg | commitOrNil := arg ].
  ^ self projectCompare: projectName withSourceCommit: commitOrNil