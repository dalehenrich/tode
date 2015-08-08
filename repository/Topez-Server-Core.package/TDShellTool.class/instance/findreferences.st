find
findreferences
  "
  find references [--class=<class-name>] <global-name>...
  find references [--class=<class-name>] --literal <literal>... 
"

  | path list cls |
  self
    getSubcommandOptsMixedLongShort:
      {#('class' nil #'required').
      #('literal' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
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
  ^ list