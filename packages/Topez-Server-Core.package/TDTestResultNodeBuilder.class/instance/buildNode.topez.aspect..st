as yet unclassified
buildNode: parentNode topez: aTopez aspect: anAspect
  | map |
  anAspect ~~ #'test'
    ifTrue: [ ^ super buildNode: parentNode topez: aTopez aspect: anAspect ].
  map := Dictionary new
    at: 'errors' put: #'unexpectedErrors';
    at: 'failures' put: #'unexpectedFailures';
    at: 'passed' put: #'expectedPasses';
    at: 'expectedDefects' put: #'expectedDefects';
    at: 'unexpectedPassed' put: #'unexpectedPasses';
    yourself.
  ^ TDObjectNode new
    name: self objectPrintString;
    topez: aTopez;
    parent: parentNode;
    basicContents: self object;
    elementRenderAttributeBlock: [ :theNode :elementName | theNode basicContents renderNameAttributesFor: elementName ];
    renderAttributeBlock: [ :theNode | theNode basicContents renderNameAttributes ];
    listBlock: [ :theNode | #('errors' 'failures' 'passed' 'expectedDefects' 'unexpectedPassed') ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | obj |
          obj := (theNode basicContents perform: (map at: elementName)) asArray.
          (obj asTDObjectNode: theNode topez: theNode topez aspect: anAspect)
            name: elementName;
            yourself ];
    yourself