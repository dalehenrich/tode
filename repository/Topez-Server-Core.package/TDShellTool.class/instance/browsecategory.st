browse
browsecategory
  "
  browse category [--hier] <category-name-pattern>...
  browse category [--hier] --exact <category-name>...
"

  | block label pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('hier' nil #'none')}.
  pattern := ''.
  subArguments do: [ :arg | pattern := pattern , ' ' , arg ].
  label := 'Classes in category' , pattern.
  block := [ 
  | list |
  list := Set new.
  subArguments
    do: [ :clsNamePattern | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findCategoryClassDefinitionsExact: clsNamePattern) ]
        ifAbsent: [ list addAll: (self findCategoryClassDefinitions: clsNamePattern) ] ].
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames ].
  list := self filterBrowseList: list ].
  ^ self browseClassesBlock: block label: label