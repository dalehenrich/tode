bu
buManPage
  | manPage |
  manPage := TDManPage
    commandName: 'bu'
    fromString:
      'NAME
  bu - Manage GemStone backups 

SYNOPSIS
  bu [--help] [--dir=<backup-directory>] <command> [<args>]

DESCRIPTION

  Commands:
    backup    Make a GemStone backup
    directory Define default backup directory
    info      Display info about a particular backup
    list      Display info about all backup files
    remove    Remove backup file from backup directory
    restore   Restore from a GemStone backup
    snapshot  Make a snapshot of the extent0.dbf file
    validate  Validate that backup file is readable

OPTIONS
  --help
  --dir=<backup-directory>

EXAMPLES
  bu backup sample.dbf
  bu directory $GS_HOME/gemstone/stones/dev/backups
  bu info --dir=/opt/gemstone/backups sample.dbf; edit
  bu list
  bu remove sample.dbf
  bu restore sample.dbf
  bu snapshot sample.dbf
'.
  manPage subCommands
    at: 'backup' put: self bubackupManPage;
    at: 'directory' put: self budirectoryManPage;
    at: 'info' put: self buinfoManPage;
    at: 'list' put: self bulistManPage;
    at: 'restore' put: self burestoreManPage;
    at: 'remove' put: self buremoveManPage;
    at: 'snapshot' put: self busnapshotManPage;
    at: 'validate' put: self buvalidateManPage;
    yourself.
  ^ manPage