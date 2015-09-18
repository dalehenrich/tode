bu
burestoreManPage
  ^ TDManPage
    commandName: 'restore'
    fromString:
      'NAME
  bu restore - Restore from a GemStone backup

SYNOPSIS
  bu [--dir=<backup-directory>] restore <backup-file>

DESCRIPTION
  Use the specified bacup file to restore GemStone to a previous state.

  With no options specified, the backup file will be read from the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the restore file will be read from the named
  directory.

EXAMPLES
  bu restore sample.dbf
  bu restore sample.dbf.gz
  bu --dir=/opt/gemstone/backups restore sample.dbf.gz

SEE ALSO
  bu --help backup
  bu --help directory
  bu --help info
  bu --help list
'