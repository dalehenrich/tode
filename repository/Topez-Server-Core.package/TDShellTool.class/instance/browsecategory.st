browse
browsecategory
  "
  browse category <regex-pattern>...
  browse category --exact <category-name>...
"

  | list pattern |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  list := Set new.
  pattern := ''.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findCategoryClassDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findCategoryClassDefinitions: arg) ].
      pattern := pattern , ' ' , arg ].
  ^ self browseClasses: list label: 'Classes in category' , pattern