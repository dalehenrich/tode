##NAME
  ls - list node contents

##SYNOPSIS
  ls [path]

##DESCRIPTION
  Display the contents of the given node. With no `path` specified the
  contents of the current node are listed. Otherwise the `path` is 
  resolved and the contents of the node are listed.

  The directory listing (a String) is returned.

  The ls command can only be used with internal nodes (directory-like).
