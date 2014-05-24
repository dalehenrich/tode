browse
browseDiff: methodDefinitions
  | source1 source2 method1Source method2Source diff patch windowLabel def1 def2 |
  def1 := methodDefinitions at: 1.
  source1 := def1 source.
  method1Source := (RBParser
    parseMethod: source1
    onError: [ :err :pos | 
      self halt.
      method1Source := source1 ])
    formattedCode.
  def2 := methodDefinitions at: 2.
  source2 := def2 source.
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
  patch
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowLabel: 'Diff between ' , def1 label , ' and ' , def2 label;
        yourself).
  ^ diff