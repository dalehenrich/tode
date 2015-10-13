browse
browsesender
  "
  browse sender <selector>...
  browse sender [--pure] <selector>...
  browse sender [--regex|-r]] <selector-pattern>...
"

  | label path block |
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('pure' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  label := 'Senders of'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ self findSender ].
  path
    ifNil: [ ^ self browseMethodsBlock: block label: label ]
    ifNotNil: [ ^ self browseLeafNodes: block pattern: '' label: label ]