cls
protocol: theBehavior remove: protoNames
  ^ protoNames collect: [ :protoName | theBehavior removeCategory: protoName ]