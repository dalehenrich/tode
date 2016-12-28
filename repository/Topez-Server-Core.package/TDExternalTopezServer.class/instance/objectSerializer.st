accessing
objectSerializer
  objectSerializer
    ifNil: [ objectSerializer := TodeObjectSerializer defaultExternalSerializer: self ].
  ^ objectSerializer