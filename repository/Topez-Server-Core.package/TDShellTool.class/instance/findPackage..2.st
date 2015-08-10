find
findPackage
  "
  browse|find package <regex-pattern>
  browse|find package --exact <package-name>
"

  | list |
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findPackageDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findPackageDefinitions: arg) ] ].
  ^ self filterSelectList: list