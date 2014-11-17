instance creation
simpleComposedDirectoryNodeNamed: nodeName topez: topez
  ^ self new
    name: nodeName;
    contents: TDSimpleComposedDirectoryNodeContents new;
    topez: topez;
    yourself