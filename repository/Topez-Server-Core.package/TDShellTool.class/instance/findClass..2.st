find
findClass
  "
  browse|find class [--exact] [--hier] <class-name-pattern>...
"

  | list |
  list := Set new.
  subArguments
    do: [ :clsNamePattern | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findClassExact: clsNamePattern) ]
        ifAbsent: [ list addAll: (self findClass: clsNamePattern) ] ].
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames ].
  ^ self filterSelectList: list