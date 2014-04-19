browse
browsemethod
  "
  browse method <selector>...
  browse method ( --regex | -r ) <method-pattern>...
  browse method --spec <method-spec>...
"

  | block label pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('spec' nil #'none')}.
  subOptions
    at: 'spec'
    ifPresent: [ :ignored | 
      | list |
      list := Set new.
      pattern := ''.
      subArguments
        do: [ :arg | 
          list addAll: (self findMethodSpec: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern.
      list := self filterBrowseList: list.
      ^ self browseMethods: list label: label ].
  block := [ 
  | list |
  list := Set new.
  pattern := ''.
  subOptions
    at: 'regex'
    ifPresent: [ :ignored | 
      subArguments
        do: [ :arg | 
          list addAll: (self findRegexMethod: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern , ' (regex)' ]
    ifAbsent: [ 
      subArguments
        do: [ :arg | 
          list addAll: (self findMethod: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern ].
  list := self filterBrowseList: list ].
  ^ self browseMethodsBlock: block label: label