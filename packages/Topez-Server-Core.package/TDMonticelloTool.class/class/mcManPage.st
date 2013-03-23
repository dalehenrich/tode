as yet unclassified
mcManPage
  ^ 'NAME
  mc - monticello package commands

SYNOPSIS
  mc <command> [args]

DESCRIPTION
  mc commit <pkg-name>
?  mc compare <version-name> <version-name>
  mc create <pkg-name>
  mc diff [<regex-pkg-pattern>]
  mc dirty 
  mc halo <name> <regex-pkg-pattern> 
  mc halorm <name> 
  mc history <pkg-name> [<limit>]
  mc list [<regex-pkg-pattern>]
?  mc revert <regex-pkg-pattern> [<ancestor-index>]
?  mc save <pkg-name> <version-name> <repository-spec>
  mc unload <pkg-name>

  <pkg-name> - package base name, e.g., ''Topez-Server-Core''
  <version-name> - fully qualified name, e.g., ''Topez-Server-Core-dkh.100''
  <repository-spec> (see `man mr`):
    http://seaside.gemstone.com/ss/Seaside30
    filetree:///opt/git/topez/packages
    github://dalehenrich/rb:dev/packages
'