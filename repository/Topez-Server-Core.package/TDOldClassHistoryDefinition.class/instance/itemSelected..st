as yet unclassified
itemSelected: topez
  self theClass
    editUsing:
        ((TDEditorSpec topez: topez editorAspect: #'historyClassDefinition')
            windowName: #'classDefinition';
            yourself);
    editUsing:
        ((TDEditorSpec topez: topez editorAspect: #'historyInstanceSelectors')
            windowName: #'instanceSelectors';
            windowLocation: #'instanceSelectors';
            yourself).
  self theClass class
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'historyClassSelectors')
        windowName: #'classSelectors';
        windowLocation: #'classSelectors';
        yourself).
  ^ nil