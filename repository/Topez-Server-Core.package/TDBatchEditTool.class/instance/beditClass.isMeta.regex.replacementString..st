as yet unclassified
beditClass: className isMeta: isMeta regex: regex replacementString: replacementString
  | cls selectors definitions |
  cls := Smalltalk at: className.
  selectors := isMeta
    ifTrue: [ cls class selectors ]
    ifFalse: [ cls selectors ].
  definitions := selectors
    collect: [ :selector | 
      TDBatchEditMethodDefinition
        className: className
        isMeta: isMeta
        selector: selector ].
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString