as yet unclassified
workingCopyNode: aTDMonticelloWorkingCopy
  ^ TDObjectNode new
    name: 'repos';
    readMe: 'TDMonticelloTool class>>workingCopyNode:';
    basicContents: aTDMonticelloWorkingCopy;
    listBlock: [ :theNode | #('workingCopy' 'repositoryGroup') ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (elementName = 'workingCopy'
            ifTrue: [ theNode basicContents workingCopy asTDObjectNode: theNode topez: theNode topez aspect: #'view' ]
            ifFalse: [ 
              elementName = 'repositoryGroup'
                ifTrue: [ self repositoryGroupNode: theNode basicContents workingCopy repositoryGroup ]
                ifFalse: [ nil asTDObjectNode: theNode topez: theNode topez aspect: #'view' ] ])
            name: elementName;
            yourself ];
    yourself