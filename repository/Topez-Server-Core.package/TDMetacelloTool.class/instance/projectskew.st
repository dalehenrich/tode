project
projectskew
  "
  project skew [--clone | --diff | --save ] <project-name>
"

  | projectName commitOrNil |
  self
    getSubcommandOptsMixedLongShort:
      {#('clone' nil #'none').
      #('diff' nil #'none').
      #('save' nil #'none')}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project skew` for details.' ]