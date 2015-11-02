accessing
projectNodeName
  projectNodeName ifNil: [ ^ self projectName ].
  ^ projectNodeName