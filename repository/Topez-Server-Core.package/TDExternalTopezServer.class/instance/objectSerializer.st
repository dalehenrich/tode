accessing
objectSerializer
  objectSerializer
    ifNil: [ self objectSerializer: (TodeObjectSerializer defaultExternalSerializer: self) ].
  ^ objectSerializer