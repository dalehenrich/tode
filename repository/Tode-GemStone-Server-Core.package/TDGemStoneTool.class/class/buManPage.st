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
    remove*   Remove backup file from backup directory
    restore   Restore from a GemStone backup

OPTIONS
  --help
  --dir=<backup-directory>

EXAMPLES
  bu backup seaside.dbf
  bu directory /opt/gemstone/backups
  bu info --dir=/opt/gemstone/backups seaside.dbf; print
  bu list
  bu restore seaside.dbf
'.
  manPage subCommands
    at: 'backup' put: self bubackupManPage;
    at: 'directory' put: self budirectoryManPage;
    at: 'info' put: self buinfoManPage;
    at: 'list' put: self bulistManPage;
    at: 'restore' put: self burestoreManPage;
    yourself.
  ^ manPage