as yet unclassified
mcManPage
  ^ 'NAME
  mc - monticello package commands

SYNOPSIS
  mc adopt <pkg-name> <version-name> <repository-spec>
     adopt @<workingCopy-path> @<version-path>
     adopt @<workingCopy-path> @<version-path>
     adopt <pkg-name> @<version-path>
     adopt @<workingCopy-path> <version-name> <repository-spec>
  mc ancestors <pkg-name> [<limit>]
     ancestors @<workingCopy-path> [<limit>]
  mc browse <version-name> <repository-spec>
     browse <package-name>
     browse @<workingCopy-path>
  mc bump <package-name> <repository-spec> <commit-message>
  mc commit <pkg-name>
     commit @<workingCopy-path>
  mc compare <version-name> <repository-spec> <version-name> <repository-spec>
     compare <version-name> @<repository-path> <version-name> @<repository-path>
     compare @<version-path> <version-name> <repository-spec>
     compare <version-name> <repository-spec> @<version-path>
     compare @<version-path> @<version-path>
  mc compare image <package-name> <version-name> <repository-spec>
  mc copy <version-name> <source-repository-spec> <dest1-repository-spec> [ <dest2-repository-spec> ... ]
     copy @<version-path> <dest1-repository-spec> [ <dest2-repository-spec> ... ]
     copy @<version-path> @<repository-path> [ @<repository-path-list> ...]
     copy @<version-path> @<repository-path-list> [ @<repository-path> ...]
  mc create <pkg-name>
  mc delete <pkg-name>
     delete @<workingCopy-path>
  mc diff <regex-pkg-pattern>
     diff @<workingCopy-path>
  mc dirty 
  mc halo <name> <regex-pkg-pattern> 
  mc halorm <name> 
  mc list [<regex-pkg-pattern>]
  mc load <version-name> <repository-spec>
     load <version-name> @<repository-path>
     load <package-name> <repository-spec>
     load <package-name> @<repository-path>
?  mc merge <pkg-name> <repository-spec>
   mc move <version-name> <source-repository-spec> <new-version-name> <destination-repository-spec> <commit-message>
      move @<version-path> <new-version-name> <destination-repository-spec> <commit-message>
  mc recompile <pkg-name>
     recompile @<workingCopy-path>
  mc revert <pkg-name> [<method-spec>]
     revert @<workingCopy-path> [<method-spec>]
?  mc save <pkg-name> <version-name> <repository-spec>
?     save @<workingCopy-path> <version-name> <repository-spec>
?     save @<workingCopy-path> @<version-path>
?     save <pkg-name> @<version-path>
  mc unload <pkg-name>
     unload @<workingCopy-path>
  mc version <pkg-name>

DESCRIPTION
  <pkg-name> - package base name, e.g., ''Topez-Server-Core''
  <method-spec> class>>selector reference, e.g. ''TDMonticelloTool class>>mcManPage''
  <repository-path> path to an MCRepository instance
  <repository-spec> (see `man mr`):
    http://seaside.gemstone.com/ss/Seaside30
    filetree:///opt/git/topez/packages
    github://dalehenrich/rb:dev/packages
  <version-name> - fully qualified name, e.g., ''Topez-Server-Core-dkh.100'' 
  <version-path> - path to an MCVersion instance
  <workingCopy-path> - path to an MCWorkingCopy or TDMonticelloWorkingCopy instance
'