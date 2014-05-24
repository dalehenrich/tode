as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  ^ (super buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect)
    editorAspectSelector: #'activateRoassalEditor';
    yourself