bu
buremoveManPage
  ^ TDManPage
    commandName: 'remove'
    sourceMethod: self name asString , ' class>>buremoveManPage'
    fromString:
      'NAME
  bu remove - Remove backup file from backup directory

SYNOPSIS
  bu [--dir=<backup-directory>] remove [--snapshot] <backup-file>

DESCRIPTION
  Remove the specified backup file from the backup directory.

  With no options specified, the backup file will be found in the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the backup file will be stored in the named
  directory.

  With the --snapshot option specified the named file is removed from the 
  snapshot directory. See `man bu snapshot` for details of the snapshot 
  directory.

EXAMPLES
  bu --help remove
  bu remove sample.dbf
  bu --dir=/opt/gemstone/backups remove sample.dbf
  bu remove --snapshot extent0.sample.dbf
  bu --dir=--dir=$GS_HOME/gemstone/snapshots remove extent0.sample.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
  bu --help snapshot
'