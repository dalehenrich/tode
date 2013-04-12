as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  true
    ifTrue: [ 
      Transcript
        cr;
        show:
            'buildClientElementUsing:editorAspect: ' , editorAspect , ' bulder: '
                , aTDEditorSpec builderAspect , ' object class: '
                , object class name asString.
      object := object
        asTDObjectNode: aTDEditorSpec parentObject
        topez: aTDEditorSpec topez
        aspect: aTDEditorSpec builderAspect ].
  ^ super buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect