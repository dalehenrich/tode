commands
cp: srcNodePath to: dstNodePath
  ^ (topez lookup: srcNodePath)
    cp: dstNodePath
    in: (topez baseNodeFor: dstNodePath)