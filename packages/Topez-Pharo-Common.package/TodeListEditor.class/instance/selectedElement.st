accessing
selectedElement
  | index |
  index := self listIndex.
  index = 0
    ifTrue: [ ^ false ].
  ^ self listAt: index