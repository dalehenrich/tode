bu
busnapshotManPage
  ^ TDManPage
    commandName: 'snapshot'
    fromString:
      'NAME
  bu snapshot - Make a snapshot of the extent files

SYNOPSIS
  bu [--dir=<snapshot-directory>] snapshot [--suspend=<minutes>] \
                                           <snapshot-file-extension>
DESCRIPTION
  Make a snapshot copy of the extent files: 

    1. Suspend checkpoints. By default, checkpoints will be suspended for 15 
       minutes. If that may not be enough time, you can specify the number of 
       minutes to suspend the checkpoints with the --suspend option.
    2. Copy the extent files to the <snapshot-directory> (replacing the `.dbf` 
       file extension with the given <snapshot-file-extension>.
    3. Resume checkpoints. Since checkpoints are explicitly resumed after the
       copies have been made, it does not hurt to be generous with the 
       --suspend option.

  The default snapshot directory is a sibling directory of the backup directory 
  named ''snapshot''.

  With the --dir option specified, the snapshot files will be stored in the named
  directory.

  While an extent snapshot can be used to restore the state of a repository 
  (see http://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-SysAdmin-3.2/9-BackupAndRestore.htm#pgfId-1001430),
  the recommended usage is to create an extent snapshot immediately after
  installing tODE (see $GS_HOME/tode/sys/defaults/client/scripts/installServerTode2)
  and using the snapshot as the starting point for subsequent installations.
  
EXAMPLES
  bu --help snapshot
  bu snapshot sample.dbf
  bu --dir=$GS_HOME/gemstone/snapshots snapshot sample.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
  Extent Snapshot Backup when the Repository is running:
  http://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-SysAdmin-3.2/9-BackupAndRestore.htm#pgfId-972147

  Restoring from and Extent Snapshot Backup: 
  http://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-SysAdmin-3.2/9-BackupAndRestore.htm#pgfId-1001430'