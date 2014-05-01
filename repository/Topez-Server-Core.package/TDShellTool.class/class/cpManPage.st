manPages
cpManPage
  ^ 'NAME
  cp - Copy node

SYNOPSIS
  cp [--help] <source-node> <target-node

DESCRIPTION
  Copy the contents of the source node to the target node.

  If both nodes are leaf nodes, the target node is replace by the source node.

  If the target node is a directory node then the source node is copied into
  the directory. If the source node is directory, a recursive copy is made

  If the target node is a directory node and the source node is a leaf node, then 
  the leaf node is replaced by a recursive copy of the target node.

  If the target node is a directory node and the source node is a directory node,
  then a recursive copy of the source node is made into a child node of the target
  node.

OPTIONS
  --help
    Bring up this man page.

EXAMPLES
  cp node1 node2
'