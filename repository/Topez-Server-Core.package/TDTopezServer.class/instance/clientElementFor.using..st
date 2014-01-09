accessing
clientElementFor: anObject using: aTDEditorSpec
  | element |
  self
    editorNodeFor: anObject
    aspect: aTDEditorSpec editorAspect
    do: [ :windowBuilder :finalEditorAspect | 
      element := windowBuilder
        buildClientElementUsing: aTDEditorSpec
        editorAspect: finalEditorAspect ].
  ^ element