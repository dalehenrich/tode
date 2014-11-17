entry updating
addPathNode: nodePath excludes: excludes includes: includes
  ^ (self addPathNode: nodePath)
    excludes: excludes;
    includes: includes;
    yourself