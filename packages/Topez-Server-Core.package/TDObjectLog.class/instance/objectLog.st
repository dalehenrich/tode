as yet unclassified
objectLog
  objectLog
    ifNil: [ 
      objectLog := ObjectLogEntry objectLog.
      self priorities isEmpty not
        ifTrue: [ 
          objectLog := objectLog
            select: [ :each | self priorities isEmpty or: [ self priorities includes: each priority ] ] ] ].
  ^ objectLog