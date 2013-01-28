as yet unclassified
cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex
  "CMD-b - browse class - globals"

  | beh |
  beh := listElement theObject.
  beh isBehavior
    ifFalse: [ beh := beh class ].
  {(beh theNonMetaClass)}
    edit: listElement parent
    topez: listElement topez
    aspect: #'globalList'
    windowName: nil
    windowId: nil.
  ^ true