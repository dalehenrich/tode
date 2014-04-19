browse
browsemethod
  "
  browse method <selector>...
  browse method ( --regex | -r ) <method-pattern>...
  browse method --spec <method-spec>...
"

  | block label |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('spec' nil #'none')}.
  label := 'Implementors of'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  subOptions
    at: 'spec'
    ifPresent: [ :ignored | 
      | list |
      list := Set new.
      subArguments do: [ :arg | list addAll: (self findMethodSpec: arg) ].
      list := self filterBrowseList: list.
      ^ self browseMethods: list label: label ].
  block := [ 
  | list |
  list := Set new.
  subOptions
    at: 'regex'
    ifPresent: [ :ignored | subArguments do: [ :arg | list addAll: (self findRegexMethod: arg) ] ]
    ifAbsent: [ subArguments do: [ :arg | list addAll: (self findMethod: arg) ] ].
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: label