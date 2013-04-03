as yet unclassified
mcManPage
  ^ 'NAME
  mc - monticello package commands

SYNOPSIS
  mc <command> [args]

DESCRIPTION
  mc adopt <pkg-name> <version-name> <repository-spec>
  mc ancestors <pkg-name> [<limit>]
  mc browse <version-name> <repository-spec>
?  mc browse <pkg-name>
  mc commit <pkg-name>
  mc compare <version-name> <repository-spec> <version-name> <repository-spec>
  mc copy <version-name> <source-repository-spec> <destination-repository-spec>
  mc create <pkg-name>
  mc delete <pkg-name>
  mc diff [<regex-pkg-pattern>]
  mc dirty 
  mc halo <name> <regex-pkg-pattern> 
  mc halorm <name> 
  mc list [<regex-pkg-pattern>]
  mc load <version-name> <repository-spec>
?  mc merge <pkg-name> <repository-spec>
  mc recompile <pkg-name>
  mc revert <pkg-name> [<method-spec>]
?  mc save <pkg-name> <version-name> <repository-spec>
  mc unload <pkg-name>

  <pkg-name> - package base name, e.g., ''Topez-Server-Core''
  <version-name> - fully qualified name, e.g., ''Topez-Server-Core-dkh.100''
  <method-spec> class>>selector reference, e.g. ''TDMonticelloTool class>>mcManPage''
  <repository-spec> (see `man mr`):
    http://seaside.gemstone.com/ss/Seaside30
    filetree:///opt/git/topez/packages
    github://dalehenrich/rb:dev/packages
'