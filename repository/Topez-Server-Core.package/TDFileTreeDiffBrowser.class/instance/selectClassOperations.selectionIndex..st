menu actions
selectClassOperations: listElement selectionIndex: selectionIndex
  | classNames selectedClass |
  classNames := Set new.
  stFilterBlock := nil.
  self operations
    do: [ :operation | 
      operation hasFileTreeSmalltalkSource
        ifTrue: [ operation methodClass ifNotNil: [ :cls | classNames add: cls name asString ] ] ].
  classNames := classNames asArray sorted.
  selectedClass := (GsChoiceInteraction
    prompt: 'Choose class (cancel to clear filter)'
    labels: classNames
    values: classNames) signal.
  selectedClass ifNil: [ ^ #'refreshList' ].
  stFilterBlock := [ :op | 
  op hasFileTreeSmalltalkSource
    and: [ op methodClass name asString = selectedClass ] ].
  ^ #'refreshList'