cls
protocol: theBehavior remove: protoNames
  ^ (protoNames select: [ :protoName | theBehavior includesCategory: protoName ])
    collect: [ :protoName | theBehavior removeCategory: protoName ]