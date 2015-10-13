instance creation
pathComposedDirectoryNodeNamed: nodeName topez: topez
  ^ self new
    name: nodeName;
    contents: TDPathComposedProjectEntryNodeContents new;
    topez: topez;
    yourself