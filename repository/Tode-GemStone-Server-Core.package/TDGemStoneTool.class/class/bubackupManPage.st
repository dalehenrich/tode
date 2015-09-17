bu
bubackupManPage
  ^ TDManPage
    commandName: 'backup'
    fromString:
      'NAME
  bu backup - Make a GemStone backup

SYNOPSIS
  bu [--dir=<backup-directory>] backup [--safely] [--uncompressed] <backup-file>

DESCRIPTION
  Make a GemStone backup in the specified backup file. By default a compressed 
  backup is created and a `.gz` is tacked onto the end of the <backup-file> if 
  not already present.

  With no options specified, the backup file will be located in the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the backup file will be stored in the named
  directory.

  With the --safely option specified, the backup will (quietly) be skipped if
  the target backup file already exists.

  With the --uncompressed option an uncompressed backup is created in the named
  <backup-file>.

EXAMPLES
  bu --help backup
  bu backup --uncompressed sample.dbf
  bu backup sample.dbf
  bu backup --safely sample.dbf
  bu --dir=/opt/gemstone/backups backup sample.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
  bu --help validate
'