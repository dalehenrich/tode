browse
browsereferences
  "
  browse references [--class=<class-name>] <global-name>...
  browse references [--class=<class-name>] --literal <literal>... 
"

  | block label path cls |
  self
    getSubcommandOptsMixedLongShort:
      {#('class' nil #'required').
      #('literal' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  label := 'References to'.
  subArguments do: [ :arg | label := label , ' ' , arg ].
  block := [ self findReferences ].
  path
    ifNil: [ ^ self browseMethodsBlock: block label: label ]
    ifNotNil: [ ^ self browseLeafNodes: block pattern: '' label: label ]