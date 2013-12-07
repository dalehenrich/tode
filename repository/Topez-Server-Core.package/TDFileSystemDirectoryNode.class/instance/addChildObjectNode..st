as yet unclassified
addChildObjectNode: anObjectNode
  "Have to stash the object node in /tmp, since we don't want to serialize live objects to disk ... does not scale well"

  | objectPath objectRoot objectNode |
  objectPath := '/tmp/o/' , anObjectNode dotSelfObject asOop printString , '/'.
  self topez ensureChildrenExistIn: objectPath.
  objectRoot := self topez lookup: objectPath.
  objectRoot addChildNode: anObjectNode.
  objectNode := TDObjectGatewayNode new
    name: anObjectNode name;
    contents:
        '(self topez lookup: ' , (objectPath , anObjectNode name) printString
            ,
              ' ifAbsent: [''Object reference no longer present in image.'']) dotSelfObject';
    yourself.
  ^ self addChildLeafNode: objectNode