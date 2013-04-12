accessing
editorAspect
  editorAspect ifNil: [ editorAspect := #'edit' ].
  ^ editorAspect