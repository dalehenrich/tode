menu actions
classInstanceVariableReferencesMenuAction: listElement selectionIndex: selectionIndex
  | cls variableName variableNames |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  variableNames := cls class allInstVarNames sorted.
  variableName := (GsChoiceInteraction
    prompt: 'Choose a class instance variable'
    labels: variableNames
    values: variableNames) signal.
  variableName ifNil: [ ^ false ].
  self browseReferencesMenuAction: listElement to: variableName inClass: cls.
  ^ true