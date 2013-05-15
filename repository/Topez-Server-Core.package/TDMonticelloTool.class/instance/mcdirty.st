as yet unclassified
mcdirty
  "mc dirty"

  | path |
  path := self dirtyPath.
  ^ (self topez lookup: path) dotSelfObject