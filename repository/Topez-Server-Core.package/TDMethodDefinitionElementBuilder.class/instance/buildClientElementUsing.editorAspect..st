as yet unclassified
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  ^ (super buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect)
    messagePattern: self object messagePattern;
    messagePatternIsRegex: self object messagePatternIsRegex;
    yourself