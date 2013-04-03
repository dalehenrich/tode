as yet unclassified
fromRepository: aRepository
  | descr url |
  descr := (aRepository asRepositorySpecFor: MetacelloMCProject new) description.
  descr = 'cache'
    ifTrue: [ descr := 'cache://' , aRepository asOop asString , '@gemstone/cache' ].
  url := Url absoluteFromText: descr.
  ^ self new
    url: url;
    repository: aRepository;
    yourself