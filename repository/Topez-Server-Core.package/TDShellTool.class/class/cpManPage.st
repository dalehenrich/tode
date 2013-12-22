as yet unclassified
cpManPage
  ^ 'NAME
  cp - copy node

SYNOPSIS
  cp <source-leaf-path> <target-leaf-path>
  cp <source-leaf-path> <target-directory-path>
  cp <source-directory-path> <target-leaf-path>
  cp <source-directory-path> <target-directory-path>

DESCRIPTION
  In the first form, the contents of the leaf node designated
  by the <source-leaf-path> is copied to the contents of the
  leaf node designated by the <target-leaf-path>.

  In the second form, a copy of the leaf node designated
  by the <source-leaf-path> is installed as a child node of
  the directory node designated by the <target-directory-path>.

  In the third form, a recursive copy of the directory node 
  designated by the <source-directory-path> is installed as a 
  child node of the parent of the leaf node designated by the 
  <target-leaf-path>, replacing the designated leaf node.

  In the fourth form, a recursive copy of the directory node 
  designated by the <source-directory-path> is installed as a 
  child node of the directory node designated by the 
  <target-directory-path>.
'