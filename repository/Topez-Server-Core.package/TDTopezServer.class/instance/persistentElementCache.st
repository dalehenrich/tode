accessing
persistentElementCache
  persistentElementCache
    ifNil: [ persistentElementCache := RcKeyValueDictionary new ].
  ^ persistentElementCache