as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  ^ (super buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect)
    spawnCopyBlock: self spawnCopyBlock;
    yourself