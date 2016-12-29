accessing
objectSerializer
  self topez ifNil: [ ^ TDTopezServer preferredObjectSerializer ].
  ^ self topez objectSerializer