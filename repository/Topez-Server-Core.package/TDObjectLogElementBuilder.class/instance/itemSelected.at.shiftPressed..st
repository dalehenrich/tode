as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | objectLogEntry |
  objectLogEntry := self object objectLog at: index.
  objectLogEntry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'logEntries')
        parentObject: self object;
        parentList: (OrderedCollection with: index);
        windowName: #'inspector';
        yourself).
  ^ nil