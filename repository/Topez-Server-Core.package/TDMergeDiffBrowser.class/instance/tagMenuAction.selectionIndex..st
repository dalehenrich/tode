menu actions
tagMenuAction: listElement selectionIndex: selectionIndex
  | theTag aMergeOperation oldTag |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  aMergeOperation := self operations at: selectionIndex.
  oldTag := aMergeOperation tag ifNotNil: [ :aTag | aTag ] ifNil: [ '' ].
  theTag := (GsTextInteraction prompt: 'Enter tag' template: oldTag) signal.
  self selectedOperations do: [ :mergeOperation | mergeOperation tag: theTag ].
  ^ #'refreshList'