menu action specs
menuActionSpec
  "label, shortcut character, actionSymbol"

  "works in concert with menuActionBlock"

  | builderAspect menuSpec indexableWindowMenu |
  builderAspect := self theEditorSpec builderAspect.
  menuSpec := (builderAspect isNil or: [ builderAspect == #'view' ])
    ifTrue: [ #('inspect' nil #'setInspectBuilderAspectMenuAction:selectionIndex:') ]
    ifFalse: [ #('view' nil #'setViewBuilderAspectMenuAction:selectionIndex:') ].
  indexableWindowMenu := {#('-').
  #('set window size' nil #'setIndexableWindowMenuAction:')}.
  ^ {menuSpec} , indexableWindowMenu , self parentsMenuActionSpec , #(#('-'))
    , self basicMenuActionSpec