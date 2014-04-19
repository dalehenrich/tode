browse
browsesource
  "
  browse source <regex-pattern>
  browse source --exact <source-string>
"

  | block path label |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('filter' nil #'required')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  label := 'Source matches'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ 
  | list |
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findSourceExact: arg searchScriptRoot: path) ]
        ifAbsent: [ list addAll: (self findSource: arg searchScriptRoot: path) ] ].
  list := self filterBrowseList: list ].
  path
    ifNil: [ ^ self browseMethodsBlock: block label: label ]
    ifNotNil: [ ^ self browseLeafNodes: block pattern: '' label: label ]