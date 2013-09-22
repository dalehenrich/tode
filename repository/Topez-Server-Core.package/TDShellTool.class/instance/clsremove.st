as yet unclassified
clsremove
  "
  cls remove <old-name>
      remove @<class-path>
"

  | oldName |
  oldName := tokens at: 2.
  (oldName beginsWith: '@')
    ifTrue: [ 
      | oldClass |
      oldClass := self resolveAtPathReference: oldName.
      oldName := oldClass name asString ].
  ^ self clsremove: oldName