as yet unclassified
gsmfc
  "gs mfc [<maxThreads>]"

  | maxThreads |
  maxThreads := self gsMFCDefaultMaxThreads.
  tokens size > 1
    ifTrue: [ maxThreads := (tokens at: 2) asNumber ].
  self gsMFC: maxThreads