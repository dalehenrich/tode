as yet unclassified
source
  [ 
  | oopType |
  oopType := self session rawReceiverNB: self getBlockOopType perform: 'value' withArgs: #().
  ^ self session library localFor: oopType ]
    on: GsRuntimeError
    do: [ :ex | 
      ^ ex tag asTopezProxy
        topez: self;
        signalNotifications ]