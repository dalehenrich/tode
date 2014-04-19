browse
browsereferences
  "
  browse references [--class=<class-name>] <global-name>...
  browse references [--class=<class-name>] --literal <literal>... 
"

  | list label path pattern cls |
  self
    getSubcommandOptsMixedLongShort:
      {#('class' nil #'required').
      #('literal' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  list := Set new.
  pattern := ''.
  subOptions
    at: 'class'
    ifPresent: [ :className | cls := self resolveClassReference: className ].
  subArguments
    do: [ :arg | 
      pattern := pattern , ' ' , arg.
      subOptions
        at: 'literal'
        ifPresent: [ :literalType | 
          | literal |
          literal := arg evaluate.
          list
            addAll:
              (self findReferencesToLiteral: literal inClass: cls pattern: arg) ]
        ifAbsent: [ list addAll: (self findReferences: arg inClass: cls searchScriptRoot: path) ] ].
  label := 'References to' , pattern.
  list := self filterBrowseList: list.
  ^ self browseMethods: list label: label