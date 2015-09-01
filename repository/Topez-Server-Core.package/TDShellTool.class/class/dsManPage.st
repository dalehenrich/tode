manPages
dsManPage
  ^ 'NAME
  ds - Display node contents (a verbose ls)

SYNOPSIS
  ds [--help ] [--level=<display-depth>] [<path>] 

DESCRIPTION
  Display the object info for the given node. With no <path> specified the
  object info for the current node are listed. Otherwise the <path> is 
  resolved and the object info for the node is listed.

  If the --level option is present, ssub nodes of the specified path are displayed
  to the specified display depth are listed.

  The ds command is analagous to the ls command except that object 
  info is displayed along with the names of the nodes. ds is useful
  when traversing object graphs.

OPTIONS
  --help
    Bring up this man page.

EXAMPLES
  ds
  ds /home/tode
  ds --level=2 .
'