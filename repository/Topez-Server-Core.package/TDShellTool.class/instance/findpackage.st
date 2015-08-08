find
findpackage
  "
  find package <regex-pattern>
  find package --exact <package-name>
"

  | list |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findPackageDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findPackageDefinitions: arg) ] ].
  ^ list