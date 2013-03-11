as yet unclassified
mcManPage
  ^ 'NAME
  mc - monticello package commands

SYNOPSIS
  mc <command> [args]

DESCRIPTION
  mc commit <pkg-name>
?  mc commit <pkg-name> [<repository-reference>]
?  mc compare <regex-pkg-pattern> [<regex-pkg-pattern>]
  mc create <pkg-name>
  mc diff [<regex-pkg-pattern>]
  mc dirty 
  mc halo <name> <regex-pkg-pattern> 
  mc halorm <name> 
  mc history <packageName> [<limit>]
  mc list [<regex-pkg-pattern>]
?  mc revert <regex-pkg-pattern> [<ancestor-index>]

  <pkg-name> - package base name, e.g., ''Topez-Server-Core''
  <repository-spec> (see `man mr`):
    http://seaside.gemstone.com/ss/Seaside30
    filetree:///opt/git/topez/packages
    github://dalehenrich/rb:dev/packages
'