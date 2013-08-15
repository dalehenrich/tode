as yet unclassified
beditinstance
  "bedit instance <className> <source-regex> <replacement-string>"

  | className definitions regex replacementString |
  className := (tokens at: 2) asSymbol.
  definitions := (Smalltalk at: className) selectors
    collect: [ :selector | 
      TDBatchEditMethodDefinition
        className: className
        isMeta: false
        selector: selector ].
  regex := tokens at: 3.
  replacementString := tokens at: 4.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString