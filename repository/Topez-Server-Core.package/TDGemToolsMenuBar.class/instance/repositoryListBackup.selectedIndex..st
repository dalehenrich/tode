menu actions
repositoryListBackup: listElement selectedIndex: index
  | buTool stream |
  buTool := self topez toolInstanceFor: 'bu'.
  stream := WriteStream on: String new.
  buTool buReportOn: stream.
  stream contents
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowLabel: 'Backup/Snapshots list').
  ^ true