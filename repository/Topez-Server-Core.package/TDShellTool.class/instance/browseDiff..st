as yet unclassified
browseDiff: methodDefinitions
  | source1 source2 method1Source method2Source diff patch |
  source1 := (methodDefinitions at: 1) source.
  method1Source := (RBParser
    parseMethod: source1
    onError: [ :err :pos | 
      self halt.
      method1Source := source1 ])
    formattedCode.
  source2 := (methodDefinitions at: 2) source.
  method2Source := (RBParser
    parseMethod: source2
    onError: [ :err :pos | 
      self halt.
      method2Source := source2 ])
    formattedCode.
  diff := TextDiffBuilder
    from: method1Source withSqueakLineEndings
    to: method2Source withSqueakLineEndings.
  patch := diff buildTextPatch.
  patch editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ diff