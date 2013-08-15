as yet unclassified
beditclass
  "bedit class <className> <source-regex> <replacement-string>"

  | className definitions regex replacementString |
  className := (tokens at: 2) asSymbol.
  definitions := (Smalltalk at: className) class selectors
    collect: [ :selector | TDBatchEditMethodDefinition className: className isMeta: true selector: selector ].
  regex := tokens at: 3.
  replacementString := tokens at: 4.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString