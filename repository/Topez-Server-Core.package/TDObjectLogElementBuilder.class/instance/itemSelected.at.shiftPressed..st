as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | objectLogEntry |
  index ifNil: [ ^ nil ].
  objectLogEntry := self object objectLog at: index.
  objectLogEntry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'logEntries')
        parentObject: self object;
        parentList:
            (OrderedCollection
                with:
                  {index.
                  #'view'});
        windowName: #'inspector';
        yourself).
  ^ nil