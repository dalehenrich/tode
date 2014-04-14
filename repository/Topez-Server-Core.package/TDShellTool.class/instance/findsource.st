find
findsource
  "find [--scriptPath=<tode-path>] source [--exact] <selector>"

  | selector path |
  self primeScriptPathOption.
  self getSubcommandOptsMixedLongShort: {#('exact' nil #'none')}.
  selector := subArguments at: 1.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  subOptions
    at: 'exact'
    ifPresent: [ :ignored | ^ self findSourceExact: selector searchScriptRoot: path ]
    ifAbsent: [ ^ self findSource: selector searchScriptRoot: path ]