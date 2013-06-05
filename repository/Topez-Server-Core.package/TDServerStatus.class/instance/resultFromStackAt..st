as yet unclassified
resultFromStackAt: anOffset
  | index |
  index := self resultStackIndex - anOffset + 1.
  index <= 0
    ifTrue: [ index := index + self resultStack size ].
  ^ self resultStack at: index