as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect className itemAttribute obj |
  itemAttribute := listElement itemCache at: index.
  className := itemAttribute object.
  aspect := itemAttribute aspect.
  obj := Smalltalk classNamed: className.
  TDClassDefinition selectClassNamed: className topez: listElement topez.
  obj
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'classDefinition')
            windowName: #'classDefinition';
            yourself);
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'instanceSelectors')
            windowName: #'instanceSelectors';
            yourself).
  obj class
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'classSelectors')
        windowName: #'classSelectors';
        yourself).
  listElement selectedIndex ~~ index
    ifTrue: [ 
      obj
        editUsing:
          ((TDEditorSpec topez: listElement topez editorAspect: #'hierarchyList')
            windowName: #'hierarchy';
            yourself) ].
  ^ nil