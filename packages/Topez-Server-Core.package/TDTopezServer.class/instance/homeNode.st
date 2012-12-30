accessing
homeNode

homeNode ifNil: [ homeNode := self lookup: '/home'].
^homeNode