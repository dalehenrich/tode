as yet unclassified
fromRepository: aRepository
  | description url |
  description := (aRepository asRepositorySpecFor: MetacelloMCProject new)
    description.
  description = 'cache'
    ifTrue: [ description := 'cache://' , aRepository asOop asString , '@gemstone' ].
  url := Url absoluteFromText: description.
  ^ self new
    url: url;
    repository: aRepository;
    yourself