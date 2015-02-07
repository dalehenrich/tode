menu actions
repositoryListBackup: listElement selectedIndex: index
  | buTool entries stream |
  buTool := self topez toolInstanceFor: 'bu'.
  entries := buTool buEntries.
  stream := WriteStream on: String new.
  buTool buReport: entries on: stream.
  stream contents
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit') windowLabel: 'Backup list').
  ^ true