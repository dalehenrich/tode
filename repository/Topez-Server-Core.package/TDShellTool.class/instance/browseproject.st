browse
browseproject
  "
  browse project <regex-pattern>
  browse project --exact <project-name>
"

  | block pattern |
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  pattern := ''.
  subArguments do: [ :arg | pattern := pattern , ' ' , arg ].
  block := [ 
  | list |
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findProjectDefinitionsExact: arg) ]
        ifAbsent: [ list addAll: (self findProjectDefinitions: arg) ] ].
  list := self filterBrowseList: list ].
  ^ self browseClassesBlock: block label: 'Defs in project' , pattern