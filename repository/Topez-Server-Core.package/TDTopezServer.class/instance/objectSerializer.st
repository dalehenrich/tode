accessing
objectSerializer
  objectSerializer
    ifNil: [ objectSerializer := TodeObjectSerializer defaultSerializer ].
  ^ objectSerializer