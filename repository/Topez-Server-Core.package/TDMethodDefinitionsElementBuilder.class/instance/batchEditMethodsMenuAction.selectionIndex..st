menu actions
batchEditMethodsMenuAction: listElement selectionIndex: selectionIndex
  | tool regex replacementString |
  tool := listElement topez toolInstanceFor: 'bedit'.
  regex := (GsTextInteraction
    prompt:
      'Enter regular expression to be used to find strings to be conditionally replaced'
    template: '') signal.
  regex isNil
    ifTrue: [ ^ false ].
  replacementString := (GsTextInteraction
    prompt:
      'Enter string to be used to (conditionally) replace matches for: ' , regex
    template: '') signal.
  regex isNil
    ifTrue: [ ^ false ].
  tool
    beditDefinitions: self definitions
    regex: regex
    replacementString: replacementString.
  ^ true