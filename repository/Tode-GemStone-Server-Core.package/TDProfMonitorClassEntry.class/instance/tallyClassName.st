accessing
tallyClassName
  tallyClassName
    ifNil: [ tallyClassName := self tallyClass theNonMetaClass name asString ].
  ^ tallyClassName