accessing
clientElementFor: anObject using: aTDEditorSpec
  | element |
  self
    editorNodeFor: anObject
    aspect: aTDEditorSpec editorAspect
    do: [ :windowBuilder :finalEditorAspect | 
      windowBuilder objectBlock: aTDEditorSpec objectBlock.
      element := windowBuilder
        buildClientElementUsing: aTDEditorSpec
        editorAspect: finalEditorAspect ].
  self serverStatus cacheClientElement: element.
  ^ element