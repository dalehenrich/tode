instance creation
fromBehavior: aBehavior
  | cls |
  cls := aBehavior theNonMetaClass.
  ^ aBehavior classHistory
    ifNil: [ self className: cls isMeta: aBehavior isMeta className classHistoryIndex: 1 ]
    ifNotNil: [ :ch | 
      self
        className: cls className
        isMeta: aBehavior isMeta
        classHistoryIndex: (ch indexOf: cls) ]