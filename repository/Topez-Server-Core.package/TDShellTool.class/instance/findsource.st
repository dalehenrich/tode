find
findsource
  "
  find source [--case] <regex-pattern>...
  find source --exact [--noCase] <source-string>...
"

  | path list |
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
  ^ list