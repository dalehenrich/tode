entry updating
addPathNode: nodePath excludes: excludes
  ^ (self addPathNode: nodePath)
    excludes: excludes;
    yourself