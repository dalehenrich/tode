as yet unclassified
clsremove
  "
  cls remove <old-name>
      remove @<class-path>
"

  | clsName theClass |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  ^ self clsremove: theClass