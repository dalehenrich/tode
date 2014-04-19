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
  block := [ 
  | list |
  list := Set new.
  subOptions
    at: 'class'
    ifPresent: [ :className | cls := self resolveClassReference: className ].
  subArguments
    do: [ :arg | 
      subOptions
        at: 'literal'
        ifPresent: [ :literalType | 
          | literal |
          literal := arg evaluate.
          list
            addAll:
              (self findReferencesToLiteral: literal inClass: cls pattern: arg) ]
        ifAbsent: [ list addAll: (self findReferences: arg inClass: cls searchScriptRoot: path) ] ].
  list := self filterBrowseList: list ].
  path
    ifNil: [ ^ self browseMethodsBlock: block label: label ]
    ifNotNil: [ ^ self browseLeafNodes: block pattern: '' label: label ]