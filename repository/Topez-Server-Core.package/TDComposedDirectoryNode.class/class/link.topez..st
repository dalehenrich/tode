instance creation
link: aNode topez: topez
  ^ self new
    name: aNode name;
    contents:
        (TDSimpleComposedDirectoryNodeContents new
            node: aNode;
            yourself);
    topez: topez;
    yourself