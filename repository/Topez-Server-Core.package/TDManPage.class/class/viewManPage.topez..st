as yet unclassified
viewManPage: manPageString topez: topez
  "see http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for tips on documenting command syntax"

  (self fromString: manPageString commandPath: nil sourceMethod: nil) asText
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'manPage';
        yourself)