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
      #('noCase' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  label := 'Source matches'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ self findSource ].
  path
    ifNil: [ ^ self browseMethodsBlock: block label: label ]
    ifNotNil: [ ^ self browseLeafNodes: block pattern: '' label: label ]