accessing
removeChildrenAt: commandPath
    self removeChildrenAt: commandPath select: [ :child | true ]