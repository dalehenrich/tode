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
  list := self findcategory: subArguments options: options.
  list := self filterBrowseList: list ].
  ^ self browseClassesBlock: block label: label