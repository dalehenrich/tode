as yet unclassified
indexListNode: parentNode indexList: indexList
  | node |
  node := TDObjectNode new
    name: 'indexList';
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>indexListNode:';
    basicContents: indexList;
    listBlock: [ :theNode | #('rootTerms') , ((1 to: indexList size) collect: [ :each | each asString ]) ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (elementName = 'rootTerms'
            ifTrue: [ self pathTermsNode: theNode pathTerms: indexList rootTerms ]
            ifFalse: [ 
              elementName isAllDigits
                ifFalse: [ absentBlock value ].
              self indexNode: theNode index: (indexList at: elementName asNumber) ])
            name: elementName;
            yourself ];
    yourself.
  ^ node