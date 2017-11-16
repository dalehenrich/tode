browse
browseDiff: methodDefinitions
  | source1 method1Source method2Source diff patch def1 def2Label |
  def1 := methodDefinitions at: 1.
  source1 := def1 source.
  method1Source := (RBParser
    parseMethod: source1
    onError: [ :err :pos | 
      self halt.
      method1Source := source1 ])
    formattedCode.
  methodDefinitions size > 1
    ifTrue: [ 
      | def2 source2 |
      def2 := methodDefinitions at: 2.
      source2 := def2 source.
      method2Source := (RBParser
        parseMethod: source2
        onError: [ :err :pos | 
          self halt.
          method2Source := source2 ])
        formattedCode.
      def2Label := def2 label ]
    ifFalse: [ 
      | persistentMethodDict |
      persistentMethodDict := def1 theBehavior persistentMethodDictForEnv: 0.
      (persistentMethodDict at: def1 selector ifAbsent: [  ])
        ifNil: [ 
          | msg |
          msg := 'No base method found for ' , def1 label.
          self inform: msg.
          ^ msg ]
        ifNotNil: [ :baseMethod | method2Source := baseMethod sourceString ].
      def2Label := def1 label , ' (base method)' ].
  diff := TextDiffBuilder
    from: method1Source withSqueakLineEndings
    to: method2Source withSqueakLineEndings.
  patch := diff buildTextPatch.
  patch
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowLabel: 'Diff between ' , def1 label , ' and ' , def2Label;
        yourself).
  ^ diff