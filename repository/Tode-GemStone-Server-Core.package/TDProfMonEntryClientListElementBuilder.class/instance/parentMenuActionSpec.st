menu action specs
parentMenuActionSpec
  | pad parentsSpec parents parentIndex parentEntry |
  pad := ''.
  parentsSpec := {}.
  parentIndex := 0.
  parentEntry := self object parentEntry.
  [ parentEntry notNil ]
    whileTrue: [ 
      parentIndex := parentIndex + 1.
      parentsSpec
        add:
          {(pad , (parentEntry profMonEntry asStringWidth: (25 - pad size max: 10))).
          nil.
          parentIndex}.
      pad := pad , ' '.
      parentEntry := parentEntry parentEntry ].
  parentsSpec isEmpty
    ifTrue: [ ^ #() ].
  ^ {{('Crumbs' -> parentsSpec)}.
  #('-')}