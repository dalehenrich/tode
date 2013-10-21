menu actions
createAccessorsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def beh clsTool |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  beh := def theBehavior.
  clsTool := listElement topez toolInstanceFor: 'cls'.
  clsTool
    clsaccessors: beh
    setters: true
    getters: true
    argName: 'anObject'
    protocol: 'accessing'.
  ^ true