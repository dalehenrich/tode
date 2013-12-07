as yet unclassified
addChildIfAbsent: childName
  ^ self
    childNamed: childName
    ifAbsent: [ 
      self
        addChildNode:
          (self class new
            name: childName;
            yourself) ]