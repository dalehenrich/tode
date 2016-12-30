client list element
reorderElementNodeNames: elementNames
  | frameElementNames hasSelf |
  hasSelf := false.
  frameElementNames := elementNames asOrderedCollection.
  (frameElementNames includes: 'self')
    ifTrue: [ hasSelf := true.
      frameElementNames remove: 'self'.
      frameElementNames addFirst: 'self' ]
    ifFalse: [ (frameElementNames includes: '(self)')
        ifTrue: [ hasSelf := true.
          frameElementNames remove: '(self)'.
          frameElementNames addFirst: '(self)' ] ].
  (frameElementNames includes: '(receiver)')
    ifTrue: [ frameElementNames remove: '(receiver)'.
      hasSelf
        ifTrue: [ frameElementNames add: '(receiver)' after: (frameElementNames at: 1) ]
        ifFalse: [ frameElementNames addFirst: '(receiver)' ] ].
  ^ frameElementNames