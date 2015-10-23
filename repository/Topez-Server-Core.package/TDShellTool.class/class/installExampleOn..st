as yet unclassified
installExampleOn: aTDTopezServer
  | examplesNode |
  (aTDTopezServer ensureChildrenExistIn: '/examples')
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st';
            contents: '3+4';
            yourself);
    addChildNode:
        (TDTxtLeafNode new
            name: 'text';
            contents:
                'This is ' asText
                    ,
                      (Text
                        string: 'REAL'
                        attributes:
                          {(TextColor red).
                          (TextEmphasis bold)})
                    , ' text.' asText;
            yourself);
    addChildNode:
        (TDTxtLeafNode new
            name: 'analysis';
            contents:
                (Text
                    string:
                      '==============================
=============================='
                    attributes: {(TextEmphasis bold)});
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'topez';
            contents: 'cat /home/.window/model';
            yourself);
    addChildNode:
        (TDScriptLeafNode new
            name: 'script';
            block: [ :topez :objIn :tokens :windowId | 'hello world' ];
            blockVendor: self;
            manPage:
                (TDManPage
                    commandName: 'script'
                    commandPath: '/home/script'
                    sourceMethod:
                      self name asString , ' class>>installExampleOn:'
                    fromString:
                      'NAME
  script - simple demo of a topez script

SYNOPSIS
  script

DESCRIPTION
  Does a ''hello world'' to start. Edit the source for the script to change it''s 
  behavior. To create another script try:

    touch sh <script-name>
'))
            yourself.
  (aTDTopezServer lookup: self commandPath)
    addChildNode:
      (examplesNode := TDDirectoryNode new
        name: 'examples';
        readMe:
            'shell examples:
  runEx - example tpz script
  shellInit - initialize topez system ... relogin afterwards';
        yourself).
  examplesNode
    addChildNode:
        (TDTopezLeafNode new
            name: 'runEx';
            contents:
                '#
# interesting example of using run command with |
#
run | run
3+4
%
self + 3
%';
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'shellInit';
            contents:
                'TDTopezServer reset.
TDConfigurationList reset.
TDPackageList reset.
TDWindowBuilder reset.
TDAbstractDevTool initialize.';
            yourself);
    yourself