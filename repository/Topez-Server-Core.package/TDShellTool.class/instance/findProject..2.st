find
findProject
  "
  browse|find project <regex-pattern>
  browse|find project --exact <project-name>
"

  | list |
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findProjectClassDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findProjectClassDefinitions: arg) ] ].
  ^ self filterSelectList: list