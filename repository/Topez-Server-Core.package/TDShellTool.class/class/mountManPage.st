as yet unclassified
mountManPage
  ^ 'NAME
  mount - mount file directory into tODE object structure

SYNOPSIS
  mount [-h|--help| <directory-path> <object-path> [<link-name>]

DESCRIPTION
  The `mount` command makes it possible to create a link between the server
  file system and the tODE object structure.

  Once a file system directory has been mounted, you can navigate the file system
  as if it were part of the tODE object structure.

  Files with a `.ston` extension are expected to contain object references 
  serialized using STON and tODE will automatically materialize the objects 
  on reference.

  If a <link-name> is not specified, the last element of the <directory-path>
  is used to name the link node.

EXAMPLES
  mount -h
  mount /opt/git/todeHome /
  mount /opt/git/todeHome / newHome
'