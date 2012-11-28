as yet unclassified
addLeaf: leafName contents: anObject
    ^ self
        addChildNode:
            (TDLeafNode new
                name: leafName;
                contents: anObject;
                yourself)