as yet unclassified
addLeaf: leafName contents: anObject
    ^ self
        addChildNode:
            (TZLeafNode new
                name: leafName;
                contents: anObject;
                yourself)