menu actions
classVariableReferencesMenuAction: listElement selectionIndex: selectionIndex
  | cls variableName variableNames |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  variableNames := cls allClassVarNames sorted.
  variableName := (GsChoiceInteraction
    prompt: 'Choose a class variable'
    labels: variableNames
    values: variableNames) signal.
  variableName ifNil: [ ^ false ].
  self browseReferencesMenuAction: listElement to: variableName inClass: cls.
  ^ true