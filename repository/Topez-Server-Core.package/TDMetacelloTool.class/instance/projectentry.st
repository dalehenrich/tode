project
projectentry
  "
  project entry --baseline=<project-name> --repo=<project-repo> [--loads=<load-expression>] \ 
                <project-path>
          entry --config=<project-name> [--version=<project-version>] \
                --repo=<project-repo> [--loads=<load-expression>] <project-path>
          entry --git=<project-name> [--repo=<git-repo-path>] <project-path>
          entry --url=<url-for-project-entry.ston> <project-path>
"

  | repo projectEntry projectNode projectPath loads node |
  self
    getSubcommandOptsMixedLongShort:
      {#('config' nil #'required').
      #('loads' nil #'required').
      #('git' nil #'required').
      #('version' nil #'required').
      #('repo' nil #'required').
      #('url' nil #'required').
      #('baseline' nil #'required')}.
  projectPath := subArguments at: 1.
  subOptions at: 'repo' ifPresent: [ :arg | repo := arg ].
  subOptions
    at: 'loads'
    ifPresent: [ :arg | loads := arg evaluate ]
    ifAbsent: [ loads := 'default' ].
  subOptions
    at: 'config'
    ifPresent: [ :arg | 
      | version |
      projectEntry := TDProjectSpecEntryDefinition new.
      subOptions
        at: 'version'
        ifPresent: [ :versionString | version := versionString ]
        ifAbsent: [ version := #'stable' ].
      repo ifNil: [ self error: '--repo required' ].
      projectEntry
        configuration: arg
        version: version
        repository: repo
        loads: loads ]
    ifAbsent: [ 
      subOptions
        at: 'baseline'
        ifPresent: [ :baselineName | 
          projectEntry := TDProjectSpecEntryDefinition new.
          repo ifNil: [ self error: '--repo required' ].
          projectEntry baseline: baselineName repository: repo loads: loads ]
        ifAbsent: [ 
          subOptions
            at: 'git'
            ifPresent: [ :arg | 
              repo ifNil: [ self error: '--repo required' ].
              projectEntry := TDGitRepositoryEntryDefinition new
                projectName: arg;
                gitRepoDirectoryPath: repo;
                yourself ]
            ifAbsent: [ 
              subOptions
                at: 'url'
                ifPresent: [ :url | 
                  | projectEntryNode |
                  projectEntryNode := self projectProjectEntryFromUrl: url.
                  node := (self topez lookup: projectPath)
                    addChildLeafNode: projectEntryNode.
                  node topez: self topez.
                  ^ node dotSelfObject ]
                ifAbsent: [ self error: 'one of --config, --git or --baseline required' ] ] ] ].
  projectEntry status: #(#'active').
  node := projectEntry createProjectEntryNode: projectPath topez: self topez.
  node topez: self topez.
  ^ node dotSelfObject