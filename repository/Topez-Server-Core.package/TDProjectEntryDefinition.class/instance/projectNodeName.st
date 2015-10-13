accessing
projectNodeName
  projectNodeName ifNil: [ ^ 'project' ].
  ^ projectNodeName