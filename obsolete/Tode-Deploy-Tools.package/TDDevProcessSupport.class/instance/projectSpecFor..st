as yet unclassified
projectSpecFor: projectName
  | nodeName projectNode |
  nodeName := projectName , '/project'.
  projectNode := topez lookup: nodeName.
  ^ projectNode dotSelfObject