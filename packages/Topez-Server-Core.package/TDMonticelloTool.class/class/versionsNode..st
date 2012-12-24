as yet unclassified
versionsNode: aGoferResolvedReferenceList
  | node map |
  map := Dictionary new.
  aGoferResolvedReferenceList do: [ :ref | map at: ref name put: ref ].
  node
    addChildNode:
      (TDPluggableNode new
        name: 'repos';
        readMe: 'TDMonticelloTool class>>versionsNode:';
        basicContents: map;
        listBlock: [ :theNode | theNode basicContents keys sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              ((theNode basicContents at: elementName) asTDObjectNode: self topez aspect: #'monticello')
                name: elementName;
                parent: theNode;
                yourself ];
        yourself)