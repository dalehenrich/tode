accessing
editorNodeFor: anObject aspect: anAspect
  | editorClass |
  editorClass := self editorNodeClassFor: anObject aspect: anAspect.
  ^ editorClass new
    object: anObject;
    yourself