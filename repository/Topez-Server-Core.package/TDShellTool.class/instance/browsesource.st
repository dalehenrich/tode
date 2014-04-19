browse
browsesource
  "
  browse source <regex-pattern>
  browse source --exact <source-string>
"

  | list pattern path label |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('filter' nil #'required')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  list := Set new.
  pattern := ''.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findSourceExact: arg searchScriptRoot: path) ]
        ifAbsent: [ list addAll: (self findSource: arg searchScriptRoot: path) ].
      pattern := pattern , ' ' , arg ].
  list := self filterBrowseList: list.
  path
    ifNil: [ ^ self browseMethods: list label: label ]
    ifNotNil: [ 
      self browseLeafNodes: [ list asArray ] pattern: pattern label: label.
      ^ list ]