as yet unclassified
persistentElementCache
  | sessionSerialNum |
  sessionSerialNum := GsCurrentSession currentSession sessionSerialNum.
  persistentElementCache
    ifNil: [ 
      "bootstrapping"
      persistentElementCache := Dictionary new ].
  ^ persistentElementCache
    at: sessionSerialNum
    ifAbsent: [ persistentElementCache at: sessionSerialNum put: IdentitySet new ]