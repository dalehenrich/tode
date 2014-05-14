as yet unclassified
editClassDefinitions: definition listElement: listElement
  | defs |
  definition ifNil: [ ^ true ].
  defs := definition classDefinitions.
  defs
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'definitionList')
        windowName: #'categoryClassDefs';
        windowLabel: 'Classes in ' , definition label;
        yourself).
  ^ true