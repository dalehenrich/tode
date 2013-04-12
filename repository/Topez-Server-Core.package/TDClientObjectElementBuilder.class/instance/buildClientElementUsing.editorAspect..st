as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  object := object
    asTDObjectNode: aTDEditorSpec parentObject
    topez: aTDEditorSpec topez
    aspect: aTDEditorSpec builderAspect.
  ^ super buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect