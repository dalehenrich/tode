as yet unclassified
getAspectGiven: aString
  | aspects index |
  aspects := #(#'image' #'new' #'registry').
  index := aspects indexOf: aString.
  index == 0
    ifTrue: [ ^ #'image' ].
  ^ aspects at: index