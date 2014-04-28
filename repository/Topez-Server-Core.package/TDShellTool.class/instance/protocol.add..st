cls
protocol: theBehavior add: protoNames
  ^ protoNames collect: [ :protoName | theBehavior addCategory: protoName ]