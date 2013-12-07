comparing
compareModificationTime: sourceModificationTime and: destModificationTime
  ^ (sourceModificationTime asSeconds - destModificationTime asSeconds) abs
    <= self modifyWindow