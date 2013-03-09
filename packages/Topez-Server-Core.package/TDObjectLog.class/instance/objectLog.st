as yet unclassified
objectLog
  objectLog
    ifNil: [ 
      objectLog := ObjectLogEntry objectLog.
      self priority
        ifNotNil: [ objectLog := objectLog select: [ :each | each priority = self priority ] ] ].
  ^ objectLog