as yet unclassified
postCommitFor: projectName message: message
  | projectNode |
  projectNode := topez lookup: projectName.
  projectNode
    addChildNode:
      (TDTxtLeafNode new
        name: 'STATUS';
        contents: DateAndTime now printString , ' : ' , message;
        yourself)