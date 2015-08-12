client callbacks
clientEventCache: stonEventCache
  | clientEventCache |
  clientEventCache := self objectSerializer fromString: stonEventCache.
  (clientEventCache listAt: #'clientElementRetirees')
    do: [ :elementOop | 
      (Object _objectForOop: elementOop)
        ifNotNil: [ :element | self serverStatus retireClientElement: element ] ].
  ^ self objectSerializer toString: TDEventsCache new