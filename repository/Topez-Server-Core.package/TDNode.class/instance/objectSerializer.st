accessing
objectSerializer
  self topez ifNil: [ ^ TodeObjectSerializer preferredSerializer ].
  ^ self topez objectSerializer