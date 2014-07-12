project
projectnew
  "
  project new --config=<project-name> [--version=<project-version>] 
              [--repo=<project-repo>] <project-path>
          new --baseline=<project-name> [--repo=<project-repo>] <project-path>
"

  | projectName repo version stream projectNode |
  version := #'stable'.
  repo := ''.
  stream := WriteStream on: String new.
  stream nextPutAll: '^TDProjectSpecEntryDefinition new'.
  self
    getSubcommandOptsMixedLongShort:
      {#('config' nil #'required').
      #('version' nil #'required').
      #('repo' nil #'required').
      #('baseline' nil #'required')}.
  subOptions at: 'repo' ifPresent: [ :arg | repo := arg ].
  subOptions
    at: 'config'
    ifPresent: [ :arg | 
      projectName := arg.
      subOptions at: 'version' ifPresent: [ :arg | version := arg ].
      stream
        cr;
        space: 2;
        nextPutAll: 'configuration: ' , projectName printString;
        cr;
        space: 2;
        nextPutAll: 'version: ' , version printString ]
    ifAbsent: [ 
      subOptions
        at: 'baseline'
        ifPresent: [ :arg | projectName := arg ]
        ifAbsent: [ self error: 'one of --config or --baseline required' ].
      stream
        cr;
        space: 2;
        nextPutAll: 'baseline: ' , projectName printString ].
  stream
    cr;
    space: 2;
    nextPutAll: 'repository: ' , repo printString;
    cr;
    space: 2;
    nextPutAll: 'loads: ' , '''default'';'.
  stream
    cr;
    space: 2;
    nextPutAll: 'projectPath: self parent printString;';
    cr;
    space: 2;
    nextPutAll: 'status: #(#inactive);';
    cr;
    space: 2;
    nextPutAll: 'yourself'.
  projectNode := TDObjectGatewayNode new
    name: 'project';
    contents: stream contents;
    yourself.
  ^ self topez currentNode addChildLeafNode: projectNode