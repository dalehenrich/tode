menu actions
tagMenuAction: listElement selectionIndex: selectionIndex
  | mergeOperation theTag oldTag |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  mergeOperation := self operations at: selectionIndex.
  oldTag := mergeOperation tag ifNotNil: [ :aTag | aTag ] ifNil: [ '' ].
  theTag := (GsTextInteraction prompt: 'Enter tag' template: oldTag) signal.
  mergeOperation tag: theTag.
  ^ #'refreshList'