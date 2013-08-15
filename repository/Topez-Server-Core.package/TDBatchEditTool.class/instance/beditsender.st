as yet unclassified
beditsender
  "bedit sender <selector> <source-regex> <replacement-string>"

  | findTool definitions regex replacementString batchEditor batchDefinitions |
  regex := tokens at: 3.
  replacementString := tokens at: 4.
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findSender: tokens.
  batchEditor := TDBatchEditor new
    tool: self;
    regex: regex;
    replacementString: replacementString;
    definitions: definitions;
    yourself.
  batchDefinitions := definitions
    collect: [ :definition | 
      (definition asBatchEditorMethodDefinitionFor: batchEditor)
        messagePattern: regex;
        messagePatternIsRegex: true ].
  batchEditor definitions: batchDefinitions.
  batchEditor
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'batchEditList')
        windowLocation: #'implementors';
        yourself).
  ^ batchEditor