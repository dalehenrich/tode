# Release Notes 0.0.3

- [Bug Fixes](#bug-fixes)
- [Pull Requests](#pull-requests)
- [Project Loading with tODE](#project-loading-with-tode)
  - [Project Entries](#project-entries)
  - [Project Entry and Script Sharing](#project-entry-and-script-sharing)
    - [/home](#home)
    - [/project](#projects)
    - [/sys](#sys)
    - [/sys/default](#sysdefault)
    - [/sys/local](#syslocal)
    - [/sys/stone](#sysstone)
    - [/sys/stones/stones/\<stone-name\>](#sysstonesstonesstone-name)
- [Converting v0.0.2 project structure to v0.0.3](#converting-v002-project-structure-to-v003)
  - [Project Entry registration and sharing for tODE v0.0.2](#project-entry-registration-and-sharing-for-tode-v002)

##Bug Fixes
1. [Issue #5: Add command / file completion][12]
2. [Issue #100: TDProjectEntryDefinition class>>defaultGitRootPath should be in session temps][17]
1. [Issue #106: projects dir with projectEntries?][7]
1. [Issue #110: probably should have stone specific home dir in gsdevkit][6]
2. [Issue #123: adapt tode client to new tode/sys structure][8]
3. [Issue #124: `project load` may not use proper version of project entry][10]
3. [Issue #125: potential difficulty when updating live tode in 3.1.0.6 and earlier: `a OffsetError occurred (error 2003), reason:objErrBadOffsetIncomplete, max:0 actual:1`][9]
4. [Issue #129: add `\` escape to tODE command-line processing (mainly to escape newlines)][11]
5. [Issue #130: implement TDTopezServer>>evaluateCommandStream: for multi-line scripts and `tode its`][13]
6. [Issue #135: cheat sheet for GemTools users][15]
6. [Issue #143: add `/sys` structure to tODE checkout][14]
7. [Issue #147: finish `gs` command docs][16]
8. [Issue #148: write `project` command man pages #148][18]
9. [Issue #149: v0.0.3 release notes][19]

##Pull Requests
1. [Pull Request #140: Greatly Improved Git merge tool][21]
1. [Pull Request #150: v0.0.3][20]

##Project Loading with tODE
One of the basic principles for tODE is that the same code should be run whether you are executing an operation from a menu pick, the tODE shell, or a  [topaz][26] job.
This priniciple is especially important when it comes to project load scripts.
Developers must be able to count of the fact that whether or not they build a stone from scratch or update a stone from a menu pick, that they end up with the same code loaded into their image.

For the loading projects, the class **TDMetacelloTool** is the workhorse.
**TDMetacelloTool** implements a comprehensive Smalltalk API for managing most phases of project management.
**TDMetacelloTool** also implements the `project` command which provides tODE shell access to the project management API:

```
NAME
  project - Metacello project management support.

SYNOPSIS
  project [--help] <command> [<args>]

DESCRIPTION
  Commands:
    clone    Clone repository (github only)
    commit   Commit the Metacello project
    compare  View differences between repository versions (git only)
    diff     View code differences between image and repository
    entry    Create a new project entry
    list     List Metacello projects
    load     Load a Metacello project
    lock     Lock project registration
    log      Browse commit log for the Metacello project (git only)
    prime    Prime the project registry
    registry Inspect the project registry
    rehome   Point package repository groups for project to new repository
    summary  View report of changed packages and methods
    validate Validate the project registrations

  Use `project --help <command>` to read about a specific subcommand.
```

For example, to load the `Seaside3` project one can use 

1. The `project list` menu item for loading:
    ![project list menu][27]
2. The 'project load` tODE shell command:

   ```
   project load Seaside3
   ```

3. A Smalltalk expression that first looks up the tool instance that implements the `project` command and then invokes the project load proper:

```Smalltalk
  (TDTopezServer batchInstance toolInstanceFor: 'project')
    projectLoad: 'Seaside3'
```

All three techniques are based on using `toolInstanceFor:` for look up.
Ensuring that even if you happen to implement your own version of the `project` command, the same code will be executed in all three scenarios.




###Project Entries

The *project entry* is used by tODE to specify how a project is to by handled by the `project` family of commands (use the tODE command `man project` for more information about the `project` family of commands).

A *project entry* has attributes that match up with arguments you would use in a [**Metacello** load command][3].
For example the following [*project entry* for Seaside31][5]:

```Smalltalk
^ TDProjectSpecEntryDefinition new
    baseline: 'Seaside3'
      repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
      loads: #('Development' 'Zinc' 'FastCGI' 'Examples' 'Tests');
    status: #(#'inactive');
    locked: false;
    yourself
```

uses this **Metacello** expression for loading:

```Smalltalk
Metacello new
  baseline: 'Seaside3';
  repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
  load: #('Development' 'Zinc' 'FastCGI' 'Examples' 'Tests')
```

If the `lock` attribute is true, then the following is executed when the list of project entries is created:

```Smalltalk
Metacello new
  baseline: 'Seaside3';
  repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
  lock
```

If the `status` attribute includes `#active`, then in the `project list` the project is sorted to the top and displayed in *bold* if the project is loaded in the stone. 
Unloaded projects are *underlined*:

![project list][4]

###Project Entry and Script Sharing
In [tODE v0.0.3][22], the mechanisms for registration and sharing has been changed.

At the top-level of the tODE directory node structure, the `/home` directory node has been retained and two new directory nodes have been added `/projects` and `/sys`:

```
+-home\
+-projects\
+-sys\
```
####/home
The `/home` directory node houses the scripts and directory nodes.

####/projects
The nodes in the `/projects` directory node are expected to return an instance of **TDProjectEntryDefinition**.

####/sys
In a mutli-person production installation. it is very easy to to imagine that multiple stones will be used for production, development and testing.
In such an environment it is desirable to provide site-wide *project entries* and scripts that are shared by all stones.
Additionally it is desirable to be able to customize *project entries* and scripts on a stone by stone basis.
The `/sys` directory node houes the directory node structure that makes this possible.

The top-level of the `/sys` directory node looks like the following:

```
+-sys\
   +-default\
   +-local\
   +-stone\
   +-stones\
```

####/sys/default
`/sys/default/home` is the location where the common tODE scripts are located.
The scripts in this directory node are included in the initial checkout of [gsDevKitHome][23].
Over time, I expect folks to contribute their own utility scripts here.

`/sys/default/projects` is the location where the common tODE *project entries* are located.
The *project entries* in this directory node should represent the full range of projects that have been ported to [GsDevKit][25].
Over time, I expect that the list will be expanded as folks port more projects to [GsDevKit][25].

####/sys/local
`/sys/local/home` is the location where the installation-wide tODE scripts are located.
You should add scripts to this directory node that you want all stones in your installation to share.

`/sys/local/projects` is the location where the installation-wide tODE *project entries* are located.
You should add *project entries* to this directory node that you want all the stones in your installation to share.
If you have clones of projects that are present in `/sys/default/projects`, you should copy the *project entry* from `/sys/default/projects` to `/sys/local/projects` and save your installation-specific modifications there.
By default, the *project entries* in `/sys/local/projects` have precedence over those in `/sys/default/projects`.

####/sys/stone
`/sys/stone`, is always mounted pointing to the `/sys/stones/stones/<stone-name>` directory node.
In effect `/sys/stone/` is a *symbolic link* to `/sys/stones/stones/<stone-name>` and can be used in tODE commands to refer to the current stone's directory structure without having to know the name of the stone.

####/sys/stones/stones/\<stone-name\>
`/sys/stones/stones/<stone-name>/home` (or `/sys/stone/home`) is the location where the stone-specific tODE scripts are located.
By default, all new scripts and directory nodes that you create in `/home`, will be saved in this location

`/sys/stones/stones/<stone-name>/projects` (or `/sys/stone/projects`) is the location where the stone-specific tODE *project entries* are located.
If you want to customize a *project entry* for the current stone, then you should copy the *project entry* here and make your changes.

If you want to copy a piece of information from another stone or perhaps copy information from your current stone to another stone use `/sys/stones/stones/<stone-name>` to navigate to the stone's directory node.









and is created by the following tODE shell commands:

```
mount --todeRoot sys/default /sys default
mount --todeRoot sys/local /sys local
mount --todeRoot sys/stones /sys stones
mount --stoneRoot / /sys stone
```

The `--stoneRoot` option refers to the `/sys/stones/stones/<current-stone-name>` and provides a common node path for referring to the node structure for the current stone.

The `--todeRoot` option refers to the disk path defined in the `serverTodeRoot` field of a session description and is `$GS_HOME/tode` by default.

The `/sys/default`, `/sys/local` and `/sys/stones/stones/<stone-name>` directory nodes are the locations where:
- system-wide default scripts and *project entries* are defined (`/sys/default`).
- local scripts and *project entries*  are defined (`/sys/local`). 
- stone-specific scripts and *project entries* are defined ('/sys/stones/stones/<stone-name>').








####Directory Node Composition
For [tODE v0.0.3][22], script and project registration is accomplished by composing the contents of three different disk directories:

1. `$GS_HOME/tode/sys/default`
2. `$GS_HOME/tode/sys/local`
3. `$GS_HOME/tode/sys/stones/stones/<stone-name>`

The contents of the `$GS_HOME/tode/sys/default` directory is defined in the [gsDevKitHome project][23] and contains content that is generally available for use with the **GsDevKit**.

The contents of the `$GS_HOME/tode/sys/local` directory is expected to be defined on a development group by development group basis.
It is possible to exclude and override the content from the `$GS_HOME/tode/sys/default` in `$GS_HOME/tode/sys/local`
 directory. 
New content may also be added.

Each stone that is added to the system is allocated a directory (`$GS_HOME/tode/sys/stones/stones/<stone-name>`) and as with the  `$GS_HOME/tode/sys/local` directory, stone-specific exclusions, overrides and additions may be made.

The exact composition of a directory node in tODE is specified by a *composition node*.
The order of *path nodes* in the compostion defines override order. 
One may add *path nodes* that `excludes` specific entries, `includes` specific entries or uses a custom `selectBlock` using the following protocol in **TDComposedDirectoryNode**:

- addPathNode:
- addPathNode:excludes:
- addPathNode:excludes:includes:
- addPathNode:includes:
- addPathNode:selectBlock:

I NEED TO TALK ABOUT /SYS/DEFAULTS/HOME, /SYS/LOCAL/HOME, AND /SYS/STONE/HOME .... AND ../../PROJECTS ... MAYBE AN EXAMPLE OR TWO ... SINCE THESE ARE AS IS IS IMPORTANT TO IMPRINT THAT YOU COPY PROJECTS AND SCRIPTS TO THE VARIOUS DIRS TO CONTROL AVAILABILITY

####/home
As in [tODE v0.0.2][1], the `/home` directory node is the root of the shared script structure.
Here is the *composition node* for the '/home' directory node:

```Smalltalk
(TDComposedDirectoryNode
    pathComposedDirectoryNodeNamed: 'home'
    topez: self topez)
    addPathNode: '/sys/stone/home';
    addPathNode: '/sys/local/home';
    addPathNode: '/sys/default/home';
    yourself
```

####/projects
For [tODE v0.0.3][22], project registrations have been moved from subdirectories of the `/home` directory node to a separate `/project` directory node. 
Here is the *composition node* for the '/projects' directory node:

```Smalltalk
(TDComposedDirectoryNode
    pathComposedDirectoryNodeNamed: 'projects'
    topez: self topez)
    addPathNode: '/sys/stone/projects';
    addPathNode: '/sys/local/projects';
    addPathNode: '/sys/default/projects';
    yourself
```

The `/project` directory node contains only nodes that define *project entries*.
All project entries found in `/project` are registered with the `project list`.

####/sys
You may have noticed that the *composition nodes* for the `/home` and `/projects` directory nodes are specificed in terms of the `/sys` directory node.
The `/sys` directory node has mount points for to the the three standard disk directories:

1. `$GS_HOME/tode/sys/default`
2. `$GS_HOME/tode/sys/local`
3. `$GS_HOME/tode/sys/stones/`

and these form a directory node structure under `/sys` that looks like the following:

```
+-sys\
   +-default\
   +-local\
   +-stones\
```

Each of the entries: `default`, `local`, `stones` is a simple mapping to the corresponding directories in `$GS_HOME/tode/sys/` (See the [GsDevKit Release Notes 1.0.0][24] for details of the `$GS_HOME/tode/sys/` directory structure).

####/sys/stone

A fourth entry in the `/sys` directory node, `/sys/stone`, is always mounted on the `$GS_HOME/tode/sys/stones/stones/<stone-name>` directory.
Therefore the node path `/sys/stone` can be used in tODE commands to refer to the current stone's directory structure without having to know the name of the stone.

Here's a diagram of the `/sys/stone/` directory node structure:

```
+-sys\
   +-stone@\
      +-dirs@\
      +-home\
      +-homeComposition@
      +-packages@\
      +-projectComposition@
      +-projects\
      +-repos@\
```

#####/sys/stone/home
Stone-specific scripts.
Default location where new script or directory nodes are created. 
#####/sys/stone/projects
Stone-specific project entries.
#####/sys/stone/homeComposition
Location of [home composition](#home) node.
#####/sys/stone/projectComposition
Location of [project composition](#projects) node.
#####/sys/stone/dirs
List of git-based project directories.
A git-based project uses a baseline and the project repository is either a `filetree://` repository that is manged by git or the project repository is a `github://` repository.

Here's the Smalltalk code used to define the contents of `/sys/stone/dirs`:

```Smalltalk
| dirNode projectTool |
  dirNode := TDDirectoryNode new
    name: 'dirs';
    yourself.
  projectTool := self topez toolInstanceFor: 'project'.
  (projectTool projectRegistrationDefinitionList
    select: [ :registration | registration hasGitBasedRepo or: [ registration hasGitRepository ] ])
    collect: [ :registration | 
      | diskPath |
      diskPath := registration hasGitRepository
        ifTrue: [ registration gitRootDirectory pathName ]
        ifFalse: [ 
          | githubRepo |
          githubRepo := registration repository.
          (githubRepo class
            projectDirectoryFrom: githubRepo projectPath
            version: githubRepo projectVersion) pathName ].
      dirNode
        addChildNode:
          (TDObjectGatewayNode new
            name: registration projectName;
            contents: 'ServerFileDirectory on: ' , diskPath printString;
            visitAsLeafNode: true;
            yourself) ].
  ^ dirNode
```

#####/sys/stone/packages
List of packages loaded in the stone.

Here's the Smalltalk used to define the contents of `/sys/stone/projects`:

```Smalltalk
| dirNode monticelloTool |
  dirNode := TDDirectoryNode new
    name: 'packages';
    readMe: 'I have a listing of the packages loaded into this stone.';
    yourself.
  monticelloTool := self topez toolInstanceFor: 'mc'.
  (monticelloTool mclist: '')
    collect: [ :each | 
      dirNode
        addChildNode:
          (TDObjectNode new
            name: each packageName;
            basicContents: each;
            yourself) ].
  ^ dirNode
```

#####/sys/stone/repos
List of git-based or filetree-based repositories associated with the loaded project entries in the stone.

Here's the Smalltalk code used to define the contents of `/sys/stone/repos`:

```Smalltalk
| dirNode projectTool monticelloTool |
  dirNode := TDDirectoryNode new
    name: 'repos';
    yourself.
  projectTool := self topez toolInstanceFor: 'project'.
  monticelloTool := self topez toolInstanceFor: 'mc'.
  (projectTool projectRegistrationDefinitionList
    select: [ :registration | registration hasGitBasedRepo or: [ registration hasFileTreeRepo ] ])
    collect: [ :each | 
      dirNode
        addChildNode:
          (TDObjectNode new
            name: each projectName;
            basicContents: each repository;
            listBlock: [ :theNode | ((monticelloTool mrpackageNamesIn: theNode basicContents) at: 1) sorted ];
            elementBlock: [ :theNode :elementName :absentBlock | 
                  | resolvedDict versionReferences info |
                  info := monticelloTool mrpackageNamesIn: theNode basicContents.
                  resolvedDict := info at: 3.
                  versionReferences := resolvedDict
                    at: elementName
                    ifAbsent: [ absentBlock value ].
                  TDObjectNode new
                    name: elementName;
                    basicContents: versionReferences asArray;
                    listBlock: [ :theNode | (theNode basicContents collect: [ :each | each name ]) sorted ];
                    elementBlock: [ :theNode :elementName :absentBlock | 
                          | versionReference |
                          versionReference := theNode basicContents
                            detect: [ :each | each name = elementName ]
                            ifNone: absentBlock.
                          TDObjectNode new
                            name: versionReference name;
                            basicContents: versionReference version;
                            yourself ];
                    yourself ];
            yourself) ].
  ^ dirNode
```

```
# Set up /sys node structure
mount --todeRoot sys/default /sys default
mount --todeRoot sys/local /sys local
mount --todeRoot sys/stones /sys stones
# ensure that --stoneRoot directory structure is present
/sys/default/bin/validateStoneSysNodes --files --repair
mount --stoneRoot / /sys stone
# Define /home and /projects based on a composition of the /sys nodes
mount --stoneRoot homeComposition.ston / home
mount --stoneRoot projectComposition.ston / projects
commit
cd 
```

##Converting v0.0.2 project structure to v0.0.3

```
    updateClient             # update client-side tODE
    project load Tode        # update server-side tODE
    script --script=setUpSys # build tODE /sys structure
```

####Project Entry registration and sharing for tODE v0.0.2
In [tODE v0.0.2][1], there is a fairly simplistic model for registering a *project entry*:

> The subdirectories of the `/home` directory node in tODE are scanned for a node named `project`. 
Each `project` node is expected to return an instance of **TDProjectEntryDefinition**.

Project entries are shared between stones, by mounting a common directory on disk (typically `$GS_HOME/tode/home`) and using the following tODE shell command:

```
mount --todeRoot home /      # see `man mount` for more information
```


[1]: https://github.com/dalehenrich/tode/releases/tag/v0.0.2
[2]: https://github.com/dalehenrich/metacello-work/blob/master/docs/LockCommandReference.md#lock-command-reference
[3]: https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloScriptingAPI.md#loading
[4]: ../images/projectList.png
[5]: https://github.com/GsDevKit/gsDevKitHome/blob/master/tode/sys/default/projects/seaside.ston
[6]: https://github.com/dalehenrich/tode/issues/110
[7]: https://github.com/dalehenrich/tode/issues/106
[8]: https://github.com/dalehenrich/tode/issues/123
[9]: https://github.com/dalehenrich/tode/issues/125
[10]:  https://github.com/dalehenrich/tode/issues/124
[11]:  https://github.com/dalehenrich/tode/issues/129
[12]:  https://github.com/dalehenrich/tode/issues/5
[13]:  https://github.com/dalehenrich/tode/issues/130
[14]:  https://github.com/dalehenrich/tode/issues/143
[15]:  https://github.com/dalehenrich/tode/issues/135
[16]:  https://github.com/dalehenrich/tode/issues/147
[17]:  https://github.com/dalehenrich/tode/issues/100
[18]:  https://github.com/dalehenrich/tode/issues/148
[19]:  https://github.com/dalehenrich/tode/issues/149
[20]:  https://github.com/dalehenrich/tode/pull/150
[21]:  https://github.com/dalehenrich/tode/pull/140
[22]: https://github.com/dalehenrich/tode/releases/tag/v0.0.3
[23]: https://github.com/GsDevKit/gsDevKitHome
[24]: https://github.com/GsDevKit/gsDevKitHome/blob/master/docs/releaseNotes/releaseNotes1.0.0.md
[25]: https://github.com/GsDevKit
[26]: http://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-Topaz-3.2.pdf
[27]: ../images/projectListMenu.png
