browse
browseproject
  "
  browse project <regex-pattern>
  browse project --exact <project-name>
"

  | list pattern |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  list := Set new.
  pattern := ''.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findProjectDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findProjectDefinitions: arg) ].
      pattern := pattern , ' ' , arg ].
  ^ self browseClasses: list label: 'Defs in project' , pattern