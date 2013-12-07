as yet unclassified
mrManPage
  ^ 'NAME
  mr - monticello repository commands

SYNOPSIS
  mr add <repository-spec> <package-name>
     add @<repository-path> <package-name>
     add <repository-spec> @<workingCopy-path>
     add @<repository-path> @<workingCopy-path>
  mr create <repository-spec>
  mr creds <repository-spec> <username> <password>
     creds @<repository-path> <username> <password>
  mr flush 
  mr group <package-name>
     group @<workingCopy-path>
  mr list [<regex-repo-pattern>]
  mr packages <repository-spec>
     packages @<repository-path>
  mr remove <repository-spec> [ <package-name> ]
     remove @<repository-path> [ <package-name> ]
     remove <repository-spec> [ @<workingCopy-path> ]
     remove @<repository-path> [ @<workingCopy-path> ]
  mr versions <repository-spec> <package-name>
     versions @<repository-path> <package-name>

DESCRIPTION

  <package-name> - package base name, e.g., ''Topez-Server-Core''
  <repository-path> path to an MCRepository instance
  <repository-spec>
    http://seaside.gemstone.com/ss/Seaside30
    filetree:///opt/git/topez/packages
    github://dalehenrich/rb:dev/packages
  <workingCopy-path> - path to an MCWorkingCopy or TDMonticelloWorkingCopy instance
'