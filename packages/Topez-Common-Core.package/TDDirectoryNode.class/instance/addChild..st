as yet unclassified
addChild: childName
    ^ self
        addChildNode:
            (self class new
                name: childName;
                yourself)