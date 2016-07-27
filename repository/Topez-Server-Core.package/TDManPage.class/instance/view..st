as yet unclassified
view: topez
  self asText
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'manPage';
        windowLabel: self summary;
        yourself)