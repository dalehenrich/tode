browse
browsecategory
  "
  browse category topez-server tode
  browse category --exact Topez-Server-Core
  browse category --hier --exact Topez-Server-Core
  browse --select=`[:def | ''Tool'' asRegex search: def label ]` category tode
"

  | list label pattern baseLabel |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('hier' nil #'none')}.
  list := Set new.
  pattern := ''.
  baseLabel := 'Classes in category'.
  subArguments
    do: [ :clsNamePattern | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findCategoryClassDefinitionsExact: clsNamePattern) ]
        ifAbsent: [ list addAll: (self findCategoryClassDefinitions: clsNamePattern) ].
      pattern := pattern , ' ' , clsNamePattern ].
  label := baseLabel , pattern.
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames ].
  list := self filterBrowseList: list.
  ^ self browseClasses: list label: label