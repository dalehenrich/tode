as yet unclassified
haloWindowBlock: aTDTopezServer
  | directory |
  directory := Dictionary new.
  directory
    at: 'model'
    put: [ :parentNode :nodeName | 
      | serverModelOop serverObject serverNode |
      serverModelOop := parentNode topez topezClientForwarder activeWindowServerModel.
      serverModelOop ifNotNil: [ serverObject := Object _objectForOop: serverModelOop ].
      (serverObject asTDObjectNode: parentNode topez: parentNode topez aspect: #'view')
        name: nodeName;
        yourself ].
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.window';
    basicContents: directory;
    readMe: self readMeWindow;
    parent: parentNode;
    elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
    elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | block |
          block := theNode basicContents at: elementName ifAbsent: absentBlock.
          block value: theNode value: elementName ];
    yourself ]