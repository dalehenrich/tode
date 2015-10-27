project
projectinstall
  "
  project install [--stone] [--no-clone] [--no-load] \
                  --url=<project-entry-url> | --dir=<project-entry-disk-path> | <project-name>
"

  | projectEntryNode projectEntryPath clone load node entry |
  self
    getSubcommandOptsMixedLongShort:
      {#('url' nil #'required').
      #('stone' nil #'none').
      #('no-clone' nil #'none').
      #('no-load' nil #'none').
      #('dir' nil #'required')}.
  projectEntryNode := subOptions
    at: 'url'
    ifPresent: [ :projectEntryUrl | self projectProjectEntryFromUrl: projectEntryUrl ]
    ifAbsent: [ 
      subOptions
        at: 'dir'
        ifPresent: [ :dirPath | self projectProjectEntryFromPath: dirPath ]
        ifAbsent: [ 
          | projectName registration |
          projectName := subArguments at: 1.
          registration := self resolveProjectRegistrationReference: projectName.
          registration entry ] ].
  projectEntryPath := subOptions
    at: 'stone'
    ifPresent: [ :ignored | '/sys/stone/projects' ]
    ifAbsent: [ '/sys/local/server/projects' ].
  clone := subOptions
    at: 'no-clone'
    ifPresent: [ :ignored | false ]
    ifAbsent: [ true ].
  load := subOptions
    at: 'no-load'
    ifPresent: [ :ignored | false ]
    ifAbsent: [ true ].
  node := (self topez lookup: projectEntryPath)
    addChildLeafNode: projectEntryNode.
  node topez: self topez.
  entry := node dotSelfObject.
  clone | load
    ifTrue: [ 
      entry doClone: self topez.
      load
        ifTrue: [ entry doLoad: self topez ] ].
  ^ entry