as yet unclassified
elementBlock
  ^ [ :theNode :elementName :absentBlock | self childNamed: elementName parent: theNode ifAbsent: absentBlock ]