tool support
installOn: aTDTopezServer
  "self install"

  aTDTopezServer
    ensureChildrenExistIn: '/mp';
    ensureChildrenExistIn: self commandPath.
  super installOn: aTDTopezServer