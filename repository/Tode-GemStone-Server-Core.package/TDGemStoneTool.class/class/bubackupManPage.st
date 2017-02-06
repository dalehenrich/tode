bu
bubackupManPage
  ^ TDManPage
    commandName: 'backup'
    sourceMethod: self name asString , '>>bubackup'
    fromString:
      'NAME
  bu backup - Make a GemStone backup

SYNOPSIS
  bu [--dir=<backup-directory>] backup [--safely] [--commit] [--novalidate] \
     [--uncompressed] [--wait] <backup-file>

DESCRIPTION
  Make a GemStone backup in the specified backup file. By default a compressed 
  backup is created and a `.gz` is tacked onto the end of the <backup-file> if 
  not already present. By default the backup is validated (`bu validate`) after
  backup is completed.

  With no options specified, the backup file will be located in the directory 
  specified by the `bu directory` command. The default backup directory is named
  ''backups'' and is located in the $GEMSTONE_DATADIR.

  With the --dir option specified, the backup file will be stored in the named
  directory.

  With the --safely option specified, the backup will (quietly) be skipped if
  the target backup file already exists.

  With the --uncompressed option an uncompressed backup is created in the named
  <backup-file>.

  With the --novalidate option the default validation is not performed.

  With the --commit option specified a commit is made immediately before checkpoints
  are suspended. The --commit option should be used when running in batch mode (i.e.,
  a bash shell script) or when autoCommit has been disabled to ensure that the current
  state of the gem is included in the snapshot.

  With the --wait option, the command will block until voting is complete instead of
  issuing a waring message and returning. If the gc lock is still held after voting
  is complete, an error is signalled. This option should also be used when in batch
  mode.

EXAMPLES
  bu --help backup
  bu backup --uncompressed sample.dbf
  bu backup sample.dbf
  bu backup --wait sample.dbf
  bu backup --commit sample.dbf
  bu backup --safely sample.dbf
  bu --dir=/opt/gemstone/backups backup sample.dbf

SEE ALSO
  bu --help directory
  bu --help info
  bu --help list
  bu --help restore
  bu --help validate
'