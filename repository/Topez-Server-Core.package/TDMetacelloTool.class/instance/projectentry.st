project
projectentry
  "
  project entry --baseline=<project-name> [--repo=<project-repo>] <project-path>
          entry --config=<project-name> [--version=<project-version>] 
                [--repo=<project-repo>] <project-path>
          entry --git=<project-name> [--repo=<git-repo-path>] <project-path>
"

  | projectName repo version stream projectNode projectPath parentNode mcProject |
  version := #'stable'.
  repo := ''.
  mcProject := true.
  stream := WriteStream on: String new.
  stream nextPutAll: '^TDProjectSpecEntryDefinition new'.
  self
    getSubcommandOptsMixedLongShort:
      {#('config' nil #'required').
      #('version' nil #'required').
      #('repo' nil #'required').
      #('baseline' nil #'required')}.
  projectPath := subArguments at: 1.
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
        ifPresent: [ :arg | 
          projectName := arg.
          stream
            cr;
            space: 2;
            nextPutAll: 'baseline: ' , projectName printString ]
        ifAbsent: [ 
          subOptions
            at: 'git'
            ifPresent: [ :arg | 
              projectName := arg.
              mcProject := false.
              stream := WriteStream on: String new.
              stream nextPutAll: '^TDGitRepositoryEntryDefinition new'.
              stream
                cr;
                space: 2;
                nextPutAll: 'projectName: ' , projectName printString ]
            ifAbsent: [ self error: 'one of --config, --git or --baseline required' ] ] ].
  mcProject
    ifTrue: [ 
      stream
        cr;
        space: 2;
        nextPutAll: 'repository: ' , repo printString;
        cr;
        space: 2;
        nextPutAll: 'loads: ' , '''default'';' ].
  stream
    cr;
    space: 2;
    nextPutAll: 'status: #(#active);';
    cr;
    space: 2;
    nextPutAll: 'yourself'.
  projectNode := TDObjectGatewayNode new
    name: 'project';
    contents: stream contents;
    yourself.
  parentNode := self topez ensureChildrenExistIn: projectPath.
  ^ parentNode addChildLeafNode: projectNode