cls
protocol: theBehavior remove: protoNames
  <manPageApi: 'protocol' description:
    'remove method protocol from given behavior'>
  ^ protoNames collect: [ :protoName | theBehavior removeCategory: protoName ]