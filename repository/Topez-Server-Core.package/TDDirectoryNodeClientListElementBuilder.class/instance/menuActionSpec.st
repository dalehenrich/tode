menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  | builderAspect menuSpec parents parentMenuSpec displayPolicy |
  builderAspect := self theEditorSpec builderAspect.
  menuSpec := (builderAspect isNil or: [ builderAspect == #'view' ])
    ifTrue: [ #('inspect' nil #'setInspectBuilderAspectMenuAction:selectionIndex:') ]
    ifFalse: [ #('view' nil #'setViewBuilderAspectMenuAction:selectionIndex:') ].
  parents := self objectParents.
  parentMenuSpec := parents isEmpty
    ifTrue: [ #(#('-')) ]
    ifFalse: [ 
      | pad parentsSpec parentIndex |
      pad := ''.
      parentsSpec := {}.
      displayPolicy := self theEditorSpec topez displayPolicy copy.
      displayPolicy
        compacted: true;
        minimal: true;
        characterLimit: 80.
      parentIndex := 0.
      parents
        do: [ :each | 
          parentIndex := parentIndex + 1.
          displayPolicy stream: nil.
          parentsSpec
            add:
              {(pad , (each dotSelfObject displayWith: displayPolicy) asString).
              nil.
              parentIndex}.
          pad := pad , ' ' ].
      {{('Parents' -> parentsSpec)}.
      #('-')} ].
  ^ {menuSpec} , parentMenuSpec , self basicMenuActionSpec