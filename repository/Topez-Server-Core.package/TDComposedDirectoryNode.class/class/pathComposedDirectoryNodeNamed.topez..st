instance creation
pathComposedDirectoryNodeNamed: nodeName topez: topez
  ^ self new
    name: nodeName;
    contents: TDPathComposedDirectoryNodeContents new;
    topez: topez;
    yourself