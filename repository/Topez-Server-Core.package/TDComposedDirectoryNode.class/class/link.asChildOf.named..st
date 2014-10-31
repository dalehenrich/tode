instance creation
link: aNode asChildOf: parentNode named: nodeName
  ^ parentNode
    addChildNode:
      (self new
        name: nodeName;
        contents:
            (TDNodeBasedContents new
                node: aNode;
                yourself);
        yourself)