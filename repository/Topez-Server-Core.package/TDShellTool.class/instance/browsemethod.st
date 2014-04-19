browse
browsemethod
  "
  browse method at:put: nextPutAll:
  browse method --spec Dictionary>>at:put: `Dictionary class>>new:`
  browse method --regex at\:put\:|nextPutAll\:
  browse --select=@filter method at:put: 
  browse --select=`[:def | true ]` method at:put: 
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