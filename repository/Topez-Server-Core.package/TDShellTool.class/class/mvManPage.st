as yet unclassified
mvManPage
  ^ 'NAME
  mv - move node (rename)

SYNOPSIS
  mv <source-path> <target-path>
  mv <source-path> <target-dir-path>

DESCRIPTION
  In the first form, the node referenced by <source-path> is renamed to match
  the <target-path>. This form is assumed if <target-path> does not name an
  existing directory node.

  In the second form, the node is renamed to match: 

    target_dir_path/last-path-element-of-source-path
'