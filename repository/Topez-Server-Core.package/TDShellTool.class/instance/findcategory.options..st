find
findcategory: args options: opts
  | list |
  list := Set new.
  args
    do: [ :clsNamePattern | 
      opts
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findCategoryClassDefinitionsExact: clsNamePattern) ]
        ifAbsent: [ list addAll: (self findCategoryClassDefinitions: clsNamePattern) ] ].
  opts
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames ].
  ^ list