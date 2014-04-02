find
findsender
  "find [--scriptPath=<tode-path>] sender [--pure|[--regex|-r]] <selector>"

  | selector path |
  self primeScriptPathOption.
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('pure' nil #'none')}.
  selector := subArguments at: 1.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  subOptions
    at: 'pure'
    ifPresent: [ :ignored | ^ self findPureSender: selector searchScriptRoot: path ]
    ifAbsent: [ 
      subOptions
        at: 'regex'
        ifPresent: [ :ignored | ^ self findRegexSender: selector searchScriptRoot: path ]
        ifAbsent: [ ^ self findSender: selector searchScriptRoot: path ] ]