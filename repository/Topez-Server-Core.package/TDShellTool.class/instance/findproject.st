find
findproject
  "
  find project <regex-pattern>
  find project --exact <project-name>
"

  | list |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findProjectClassDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findProjectClassDefinitions: arg) ] ].
  ^ list