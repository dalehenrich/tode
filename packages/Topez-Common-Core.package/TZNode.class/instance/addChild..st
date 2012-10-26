as yet unclassified
addChild: childName
    ^ self
        addChildNode:
            (TZNode new
                name: childName;
                yourself)