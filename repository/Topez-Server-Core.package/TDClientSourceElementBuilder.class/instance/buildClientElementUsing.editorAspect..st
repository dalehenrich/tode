tools
buildClientElementUsing: aTDEditorSpec editorAspect: editorAspect
  | clientSourceElement |
  clientSourceElement := super
    buildClientElementUsing: aTDEditorSpec
    editorAspect: editorAspect.
  ^ clientSourceElement
    aspect: aTDEditorSpec editorAspect;
    firstSource: self firstSource;
    getBlock: self getBlock;
    setBlock: self setBlock;
    editorAspectSelector: #'activateCodeEditor';
    yourself