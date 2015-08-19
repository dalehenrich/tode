tools
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | clientButtonBarElement |
  clientButtonBarElement := super
    buildClientElementUsing: aTDEditorSpec
    editorAspect: editorAspect.
  ^ clientButtonBarElement
    editorAspectSelector: #'activateButtonBarEditor';
    yourself