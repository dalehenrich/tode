entry updating
addPathNode: nodePath selectBlock: selectBlock
  ^ (self addPathNode: nodePath)
    selectBlock: selectBlock;
    yourself