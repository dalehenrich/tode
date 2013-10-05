as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect classDef itemAttribute |
  itemAttribute := listElement itemCache at: index.
  classDef := itemAttribute object.
  aspect := itemAttribute aspect.
  TDClassDefinition
    selectClassNamed: classDef className
    topez: listElement topez.
  classDef
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'classDefinition')
            windowName: #'classDefinition';
            yourself);
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'instanceSelectors')
            windowName: #'instanceSelectors';
            yourself);
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'classSelectors')
            windowName: #'classSelectors';
            yourself).
  listElement selectedIndex ~~ index
    ifTrue: [ 
      classDef
        editUsing:
          ((TDEditorSpec topez: listElement topez editorAspect: #'hierarchyList')
            windowName: #'hierarchy';
            yourself) ].
  ^ nil