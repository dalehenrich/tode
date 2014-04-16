browse
browsemethod
  "
  browse method [--filter=<filter-spec>] <selector>...
  browse method [--filter=<filter-spec>] --regex <method-pattern>...
  browse method [--filter=<filter-spec>] --spec <method-spec>...
"

  | list label pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('spec' nil #'none')}.
  list := Set new.
  pattern := ''.
  subOptions
    at: 'spec'
    ifPresent: [ :ignored | 
      subArguments
        do: [ :arg | 
          list addAll: (self findMethodSpec: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern.
      list := self filterBrowseList: list.
      ^ self browseMethods: list label: label ].
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
  list := self filterBrowseList: list.
  ^ self browseMethods: list label: label