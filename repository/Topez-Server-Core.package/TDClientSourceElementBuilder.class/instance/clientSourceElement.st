accessing
clientSourceElement
  ^ self clientSourceElementClass new
    theObject: self object;
    usePersistentClientElementCache: self usePersistentClientElementCache;
    timestamp;
    yourself