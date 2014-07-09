menu actions
instanceVariableReferencesMenuAction: listElement selectionIndex: selectionIndex
  | cls variableName variableNames |
  cls := self selectedClass: listElement selectionIndex: selectionIndex.
  variableNames := cls allInstVarNames sorted.
  variableName := (GsChoiceInteraction
    prompt: 'Choose an instance variable'
    labels: variableNames
    values: variableNames) signal.
  variableName ifNil: [ ^ false ].
  self browseReferencesMenuAction: listElement to: variableName inClass: cls.
  ^ true