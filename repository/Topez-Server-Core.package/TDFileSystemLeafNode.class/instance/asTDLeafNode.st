as yet unclassified
asTDLeafNode
  | stonObject |
  stonObject := self objectSerializer fromString: self fileContents.
  (stonObject isKindOf: TDNode)
    ifFalse: [ 
      "non-tODE .ston file"
      ^ TDObjectNode new
        name: self directoryEntry name;
        parent: self parent;
        builderAspect: #'view';
        topez: self topez;
        readMe: 'An object from a raw ston file';
        basicContents: stonObject;
        listBlock: [ :theNode | #() ];
        elementBlock: [ :theNode :elementName :absentBlock | absentBlock value ];
        yourself ].
  ^ stonObject
    parent: self parent;
    topez: self topez;
    yourself