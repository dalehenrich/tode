as yet unclassified
testNode: dirName suite: suite results: results
  | node |
  node := TDObjectNode new
    name: dirName;
    topez: topez;
    readMe: 'tests for ' , dirName;
    basicContents: results;
    listBlock: [ :theNode | #('results' 'suite') ];
    renderAttributeBlock: [ :theNode | self renderNameAttributesFor: theNode basicContents ];
    elementRenderAttributeBlock: [ :theNode :elementName | 
          (elementName = 'results' or: [ elementName = dirName ])
            ifTrue: [ self renderNameAttributesFor: theNode basicContents ]
            ifFalse: [ theNode class objectTextAttributes ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | childNode |
          childNode := elementName = 'results'
            ifTrue: [ 
              (self resultsNode: results)
                elementRenderAttributeBlock: [ :theNode :elementName | 
                      elementName = 'errors'
                        ifTrue: [ 
                          {(TextColor color: Color red).
                          (TextEmphasis bold)} ]
                        ifFalse: [ 
                          elementName = 'failures'
                            ifTrue: [ 
                              {(TextColor color: Color yellow).
                              (TextEmphasis bold)} ]
                            ifFalse: [ 
                              {(TextColor color: Color green).
                              (TextEmphasis bold)} ] ] ];
                yourself ]
            ifFalse: [ 
              elementName = 'suite'
                ifTrue: [ self suiteNode: suite ]
                ifFalse: [ absentBlock value ] ].
          childNode
            parent: theNode;
            name: elementName;
            yourself ];
    yourself.
  ^ node