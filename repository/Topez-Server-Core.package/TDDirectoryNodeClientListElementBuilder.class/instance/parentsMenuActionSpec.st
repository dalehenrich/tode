menu action specs
parentsMenuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  | parents parentMenuSpec displayPolicy |
  parents := self objectParents.
  ^ parents isEmpty
    ifTrue: [ #() ]
    ifFalse: [ | pad parentsSpec parentIndex |
      pad := ''.
      parentsSpec := {}.
      displayPolicy := self theEditorSpec topez displayPolicy copy.
      displayPolicy
        compacted: true;
        minimal: true;
        characterLimit: 80.
      parentIndex := 0.
      parents do: [ :each | parentIndex := parentIndex + 1.
          displayPolicy stream: nil.
          parentsSpec
            add:
              {(pad , (each dotSelfObject displayWith: displayPolicy) asString).
              nil.
              parentIndex}.
          pad := pad , ' ' ].
      {{('Parents' -> parentsSpec)}} ]