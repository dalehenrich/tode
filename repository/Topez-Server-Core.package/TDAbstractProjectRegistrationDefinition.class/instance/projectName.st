accessing
projectName
  self entry ifNil: [ ^ self registration projectName ].
  ^ self entry projectName