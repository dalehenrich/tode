accessing
homeNode
  homeNode ifNil: [ homeNode := TransientValue value: (self lookup: '/home') ].
  ^ homeNode value