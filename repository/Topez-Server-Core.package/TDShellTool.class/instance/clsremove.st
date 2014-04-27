cls
clsremove
  "
  cls remove <old-name>
      remove @<class-path>
"

  | clsName theClass |
  clsName := tokens at: 2.
  [ theClass := self resolveClassReference: clsName ]
    on: Error
    do: [ :ex | ^ 'Class ' , clsName printString , ' not found' ].
  ^ self clsremove: theClass