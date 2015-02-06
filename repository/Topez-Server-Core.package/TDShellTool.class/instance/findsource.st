find
findsource
  "find [--scriptPath=<tode-path>] source [--exact|--case] <selector>"

  | selector path |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('case' nil #'none')}.
  selector := subArguments at: 1.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  subOptions
    at: 'exact'
    ifPresent: [ :ignored | 
      | ignoreCase |
      subOptions
        at: 'noCase'
        ifPresent: [ :ignored | ignoreCase := true ]
        ifAbsent: [ ignoreCase := false ].
      ^ self
        findSourceExact: selector
        searchScriptRoot: path
        ignoreCase: ignoreCase ]
    ifAbsent: [ 
      | ignoreCase |
      subOptions
        at: 'case'
        ifPresent: [ :ignored | ignoreCase := false ]
        ifAbsent: [ ignoreCase := true ].
      ^ self findSource: selector searchScriptRoot: path ignoreCase: ignoreCase ]