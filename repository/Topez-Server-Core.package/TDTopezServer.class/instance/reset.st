convenience
reset
  "class reset occurred ... new homeNode created, force lookup ... all of the transient fields are exposed"

  self
    homeNode: nil;
    objIn: nil.
  self serverStatus reset