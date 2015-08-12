accessing
clientEventCache: stonEventCache
  | clientEventCache |
  clientEventCache := self objectSerializer fromString: stonEventCache.
  ^ self objectSerializer toString: TDEventsCache new