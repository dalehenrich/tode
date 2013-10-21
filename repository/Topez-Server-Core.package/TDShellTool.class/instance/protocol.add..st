as yet unclassified
protocol: theBehavior add: protoNames
  <manPageApi: 'protocol' description: 'add method protocol for given behavior'>
  ^ protoNames collect: [ :protoName | theBehavior addCategory: protoName ]