*topez-server-core
asTDObjectNode: aTopez aspect: aspect
  | map |
  map := Dictionary new
    at: 'errors' put: #'unexpectedErrors';
    at: 'failures' put: #'unexpectedFailures';
    at: 'passed' put: #'expectedPasses';
    at: 'expectedDefects' put: #'expectedDefects';
    at: 'unexpectedPassed' put: #'unexpectedPasses';
    yourself.
  ^ TDObjectNode new
    name:
        ([ self printString ]
            on: Error
            do: [ :ex | 'error printing' ]);
    topez: aTopez;
    basicContents: self;
    elementRenderAttributeBlock: [ :theNode :elementName | self renderNameAttributesFor: elementName ];
    renderAttributeBlock: [ :theNode | self renderNameAttributes ];
    listBlock: [ :theNode | #('errors' 'failures' 'passed' 'expectedDefects' 'unexpectedPassed') ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | obj |
          obj := (theNode basicContents perform: (map at: elementName)) asArray.
          (obj asTDObjectNode: theNode topez aspect: aspect)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself