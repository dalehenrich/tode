manPages
mountManPage
  ^ 'NAME
  mount - mount file directory into tODE object structure

SYNOPSIS
  mount [-h|--help]
  mount [--asLeafNode] <directory-or-file-path> <object-path> [<link-name>]
  mount [--asLeafNode] --todeRoot <directory-or-file-path> <object-path> [<link-name>]

DESCRIPTION
  The `mount` command makes it possible to create a link between the server
  file system and the tODE object structure.

  Once a file system directory or file has been mounted, you can navigate the file system
  as if it were part of the tODE object structure.

  Files with a `.ston` extension are expected to contain object references 
  serialized using STON and tODE will automatically materialize the objects 
  on reference.

  If a <link-name> is not specified, the last element of the <directory-path>
  is used to name the link node.

OPTIONS
  --help 
    Bring up this man page.

  --asLeafNode
    By default nodes are mounted such that visitors will traverse the children of the
    node. The typical visitor is recursively searching the node tree for TDLeafNodes and
    is looking for senders or references to globals in Smalltalk code. If the mount point
    is for a pure filesystem (like the root node of a git repository), you probably
    do not want a senders search traversing the entire git repository. Using
    --asLeafNode will terminate visiting at the gateway node and the gateway node
    itself will be searched for references. 

  --todeRoot
    The <directory-path> is interpreted as a path relative to `todeRoot` which 
    is specified by the `serverTodeRoot` field of the class TDSessionDescription.

EXAMPLES
  mount -h

  mount /opt/git/todeHome/home /
  mount /opt/git/todeHome/home / todeHome
  mount /opt/git/todeHome/home.ston / todeHome

  mount --todeRoot home / 
'