instance creation
link: aNode topez: topez
  ^ self new
    contents:
        (TDNodeBasedContents new
            node: aNode;
            yourself);
    topez: topez;
    yourself