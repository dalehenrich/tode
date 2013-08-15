as yet unclassified
beditDefinitions: definitions regex: regex replacementString: replacementString
  | batchEditor batchDefinitions |
  batchEditor := TDBatchEditor new
    tool: self;
    regex: regex;
    replacementString: replacementString;
    definitions: definitions;
    yourself.
  batchDefinitions := definitions
    collect: [ :definition | 
      (definition asBatchEditorDefinitionFor: batchEditor)
        messagePattern: regex;
        messagePatternIsRegex: true ].
  batchEditor definitions: batchDefinitions.
  batchEditor
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'batchEditList')
        windowLocation: #'implementors';
        yourself).
  ^ batchEditor