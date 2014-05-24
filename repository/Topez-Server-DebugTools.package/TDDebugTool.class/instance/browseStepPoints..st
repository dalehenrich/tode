as yet unclassified
browseStepPoints: meth
  | stepSource |
  stepSource := self stepsForMethod: meth.
  stepSource editUsing: (TDEditorSpec topez: topez editorAspect: #'edit')