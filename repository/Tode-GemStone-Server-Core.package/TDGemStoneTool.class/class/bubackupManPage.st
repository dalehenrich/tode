bu
bubackupManPage
  ^ TDManPage
    commandName: 'backup'
    fromString:
      'NAME
  bu backup - Make a GemStone backup

SYNOPSIS
  bu [--dir=<backup-directory>] backup [--safely] <backup-file>

DESCRIPTION
  Make a GemStone backup in the specified backup file.

  With no options specified, the backup file will be located in the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the backup file will be stored in the named
  directory.

  With the --safely option specified, the snapshot will (quietly) be skipped if
  the target snapshot already exists.

EXAMPLES
  bu --help backup
  bu backup sample.dbf
  bu backup --safely sample.dbf
  bu --dir=/opt/gemstone/backups backup sample.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
'