bu
bubackupManPage
  ^ TDManPage
    commandName: 'backup'
    fromString:
      'NAME
  backup - Make a GemStone backup

SYNOPSIS
  bu [--dir=<backup-directory>] backup <backup-file>

DESCRIPTION
  Make a GemStone backup in the specified backup file.

  With no options specified, the backup file will be located in the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the backup file will be stored in the named
  directory.

EXAMPLES
  bu --help backup
  bu backup seaside.dbf
  bu --dir=/opt/gemstone/backups backup seaside.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
'