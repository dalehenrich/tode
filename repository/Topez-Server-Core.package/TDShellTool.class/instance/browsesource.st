browse
browsesource
  "
  browse source [--case] <regex-pattern>...
  browse source --exact [--noCase] <source-string>...
"

  | block path label |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('case' nil #'none').
      #('noCase' nil #'none').
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
      | ignoreCase |
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | 
          subOptions
            at: 'noCase'
            ifPresent: [ :ignored | ignoreCase := true ]
            ifAbsent: [ ignoreCase := false ].
          list
            addAll:
              (self findSourceExact: arg searchScriptRoot: path ignoreCase: ignoreCase) ]
        ifAbsent: [ 
          subOptions
            at: 'case'
            ifPresent: [ :ignored | ignoreCase := false ]
            ifAbsent: [ ignoreCase := true ].
          list
            addAll:
              (self findSource: arg searchScriptRoot: path ignoreCase: ignoreCase) ] ].
  list := self filterBrowseList: list ].
  path
    ifNil: [ ^ self browseMethodsBlock: block label: label ]
    ifNotNil: [ ^ self browseLeafNodes: block pattern: '' label: label ]