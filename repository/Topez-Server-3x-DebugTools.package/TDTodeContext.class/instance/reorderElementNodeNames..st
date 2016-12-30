client list element
reorderElementNodeNames: elementNames
  | frameElementNames hasSelf |
  hasSelf := false.
  frameElementNames := elementNames asOrderedCollection.
  (frameElementNames includes: 'self')
    ifTrue: [ hasSelf := true.
      frameElementNames remove: 'self'.
      frameElementNames addFirst: 'self' ].
  ^ frameElementNames