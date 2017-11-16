as yet unclassified
basicTodeEditObject
  "a bit of monkey business to make it possible to edit/inspect raw .ston objects (non-TDNode objects) on disk"

  | theLeaf |
  theLeaf := self asTDLeafNode.
  (theLeaf isKindOf: TDObjectNode)
    ifTrue: [ ^ theLeaf basicTodeEditObject ].
  ^ self