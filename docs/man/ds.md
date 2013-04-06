##NAME
  ds - display node contents (a verbose ls)

##SYNOPSIS
  ds [<path>] [<level>]

##DESCRIPTION
  Display the object info for the given node. With no <path> specified the
  object info for the current node are listed. Otherwise the <path> is 
  resolved and the object info for the node is listed.

  If <level> is specified (> 1) then sub nodes to the specified depth
  are listed.

  The directory listing (a String) is returned.

  The ds command can only be used with internal nodes (directory-like).

  The ds command is analagous to the ls command except that object 
  info is displayed along with the names of the nodes. ds is useful
  when traversing object graphs.
