tool support
installOn: aTDTopezServer
  "self install"

  aTDTopezServer
    ensureChildrenExistIn: '/metacello';
    ensureChildrenExistIn: self commandPath.
  super installOn: aTDTopezServer