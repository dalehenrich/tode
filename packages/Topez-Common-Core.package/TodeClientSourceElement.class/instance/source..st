as yet unclassified
source: aString
  [ self session rawReceiverNB: self setBlockOopType perform: 'value:' withArgs: {aString} ]
    on: GsRuntimeError
    do: [ :ex | 
      ^ ex tag asTopezProxy
        topez: self;
        signalNotifications ]