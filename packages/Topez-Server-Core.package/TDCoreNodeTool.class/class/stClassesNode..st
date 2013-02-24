as yet unclassified
stClassesNode: aTopez
  <topezNode: 'classes'>
  | node directory |
  node := aTopez installChildrenAt: '/st'.
  node
    addChildNode:
      (TDPluggableNode new
        name: 'classes';
        readMe: self classesReadMe;
        basicContents: [ :selector :className | 
              selector == #'list'
                ifTrue: [ Smalltalk classOrganizer classes asArray sort: [ :a :b | a name <= b name ] ]
                ifFalse: [ 
                  "selector == #'class'"
                  Smalltalk at: className asSymbol ] ];
        elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
        elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
        listBlock: [ :theNode | 
              (theNode basicContents value: #'list' value: nil)
                collect: [ :each | each name asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
              | cls |
              cls := theNode basicContents value: #'class' value: elementName.
              (cls asTDObjectNode: theNode topez: theNode topez aspect: #'view')
                name: cls name asString;
                yourself ];
        yourself)