as yet unclassified
gsMfc
  | threads wait buffer cpu |
  self subOptions
    at: 'noCommit'
    ifPresent: [ :ignored | System abortTransaction ]
    ifAbsent: [ self topez commitTransaction ].
  self subOptions
    at: 'threads'
    ifPresent: [ :aNumber | threads := aNumber asNumber ]
    ifAbsent: [ threads := 1 ].
  self subOptions
    at: 'wait'
    ifPresent: [ :aNumber | wait := aNumber asNumber ]
    ifAbsent: [ wait := 60 ].
  self subOptions
    at: 'buffer'
    ifPresent: [ :aNumber | buffer := aNumber asNumber ]
    ifAbsent: [ buffer := 128 ].
  self subOptions
    at: 'cpu'
    ifPresent: [ :aNumber | cpu := aNumber asNumber ]
    ifAbsent: [ cpu := 90 ].
  self
    gsMfc: threads
    wait: wait
    buffer: buffer
    cpu: cpu