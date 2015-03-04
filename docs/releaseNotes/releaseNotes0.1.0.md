# Release Notes 0.1.0

- [Bug Fixes](#bug-fixes)
- [Pull Requests](#pull-requests)
- [Git Credentials and tODE](#git-credentials-and-tode)
- [Project Loading with tODE](#project-loading-with-tode)
  - [Project Entries](#project-entries)
  - [Project Entry and Script Sharing](#project-entry-and-script-sharing)
  - [Project Entry and Script Sharing Structures](#project-entry-and-script-sharing-structures)
    - [/home](#home)
    - [/projects](#projects)
    - [/sys](#sys)
    - [/sys/default](#sysdefault)
    - [/sys/local](#syslocal)
    - [/sys/stone](#sysstone)
    - [/sys/stones\<stone-name\>](#sysstones)
    - [/sys/stones/stones/\<stone-name\>](#sysstonesstonesstone-name)
    - [/sys/stones/stones/\<stone-name\>/dirs](#sysstonesstonesstone-namedirs)
    - [/sys/stones/stones/\<stone-name\>/home](#sysstonesstonesstone-namehome)
    - [/sys/stones/stones/\<stone-name\>/homeComposition](#sysstonesstonesstone-namehomecomposition)
    - [/sys/stones/stones/\<stone-name\>/packages](#sysstonesstonesstone-namepackages)
    - [/sys/stones/stones/\<stone-name\>/projectComposition](#sysstonesstonesstone-nameprojectcomposition)
    - [/sys/stones/stones/\<stone-name\>/projects](#sysstonesstonesstone-nameprojects)
    - [/sys/stones/stones/\<stone-name\>/repos](#sysstonesstonesstone-namerepos)
    - [Construction of Project Entry and Script Sharing Structures](#construction-of-project-entry-and-script-sharing-structures)
- [Converting v0.0.2 project structure to v0.1.0](#converting-v002-project-structure-to-v010)

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
9. [Issue #149: v0.1.0 release notes][19]
10. [Issue #152: `project refresh` project entry command needed][31]		
11. [Issue #154: `project load Tode --loads=`#('Tests')` option to append --loads to project entry][32]
12. [Issue #155: rename v0.0.3 to v0.1.0][33]
13. [Issue #157: `test --batch` option for supporting batch test runs][34]

##Pull Requests
1. [Pull Request #140: Greatly Improved Git merge tool][21]
1. [Pull Request #150: v0.1.0][20]

##Git Credentials and tODE
When you clone a git repository, your remote repository credentials (i.e., GitHub username and password) are needed for doing commands like `push`.
The [Github article: Which remote URL should I use?][35] describes the various choices you have.
With tODE, the `git` commands are performed using `System class>>performOnServer:` and it is not convenient to prompt for your username and password everytime a git command is performed.

I recommend that you use SSH and setup [an SSH keypair][36].
With an SSH keypair, you are never prompted for a username and password.
You can also use [SSH agent forwarding][37] to use your local SSH keys for server installations.

If for some reason you decide that you want to use `https` to clone your repo, then you will need to set up [a `credential.helper` for git][38].
To avoid having to periodically redefine your password, you should use [`git-credential-store][39], which stores credentials in a file on disk protected by filesystem permissions.

##Project Loading with tODE
One of the basic principles for tODE is that the same code should be run whether you are executing an operation from a menu pick, the tODE shell, or a  [topaz][26] job.
This priniciple is especially important when it comes to project load scripts.
Developers must be able to count on the fact that whether or not they build a stone from scratch or update a stone from a menu pick, that they end up with the same code loaded into their image.

For loading projects, the class **TDMetacelloTool** is the workhorse.
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

For example, to load the `Seaside3` project one can use: 

1. The `load`  menu item in the `project list`:

   ![project list menu][27]

2. The 'project load` command in the tODE shell:

   ```
   project load Seaside3
   ```

3. A Smalltalk expression that can be run in a workspace or topaz:

```Smalltalk
  (TDTopezServer batchInstance toolInstanceFor: 'project')
    projectLoad: 'Seaside3'
```

All three techniques are based on using `toolInstanceFor:` for look up and the same `load` code is executed in all three scenarios.

###Project Entries

The *project entry* is used by tODE to specify the details needed for loading a project. 
A *project entry* has attributes that correspond to the arguments you would use in a [**Metacello** load command][3].
For example the following Metacello load command for the Seaside3 project:

```Smalltalk
Metacello new
  baseline: 'Seaside3';
  repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
  lock;
  load: #('Development' 'Zinc' 'FastCGI' 'Examples' 'Tests')
```

is specified like this in a *project entry*:

```Smalltalk
^ TDProjectSpecEntryDefinition new
    baseline: 'Seaside3'
      repository: 'github://GsDevKit/Seaside31:3.1.?/repository'
      loads: #('Development' 'Zinc' 'FastCGI' 'Examples' 'Tests');
    status: #(#'inactive');
    locked: false;
    yourself
```

Over time, the **TDProjectSpecEntryDefinition** will be expanded to include additional project meta data as needed.

The *project entry* specification is stored on disk so that the specifications can be shared across multiple stones.

###Project Entry and Script Sharing
In a [GsDevKitHome][25] installation, it is expected that multiple stones will be used for production, development and testing.
In this environment it is necessary to be able to have:

1. An initial, default set of *project entry* specifications, managed by the [GsDevKit team][28], that are shared by all stones.
2. Installation-wide *project entries* and scripts where some *project entry* specifications have been customized for the local installation or additional *project entry* specifications have been added that are managed by the local development team.
3. Stone-specific *project entry* specifications that are customized on a stone by stone basis.

###Project Entry and Script Sharing Structures
At the top-level of the tODE directory node structure in`/`, there are three directory nodes that are used to implement  *project entry* and script sharing:

```
+-home\
+-projects\
+-sys\
```
####/home
The `/home` directory node houses the shared scripts and directory nodes.

*See the [/sys/stones/stones/\<stone-name\>/homeComposition](#sysstonesstonesstone-namehomecomposition) section for information on how the contents of the `/home` directory node is composed.*

####/projects
The nodes in the `/projects` directory node are *project entry* specifications.

*See the [/sys/stones/stones/\<stone-name\>/projectComposition](#sysstonesstonesstone-nameprojectcomposition) section for information on how the contents of the `/projects` directory node is composed.*

####/sys
Both the `/home` and `/projects` directory nodes are composed from three other directory node strucures under `/sys`: [/sys/default](#sysdefault); [/sys/local](#syslocal); and [/sys/stones/stones/\<stone-name\>](#sysstonesstonesstone-name):

```
+-sys\
   +-default\
   +-local\
   +-stone\
   +-stones\
```

####/sys/default
The `/sys/default/` directory node is a mount point for the disk directory `$GS_HOME/tode/sys/default`.

`/sys/default/home` is the location where the common tODE scripts are located.
The scripts in this directory node are included in the initial checkout of [gsDevKitHome][23].
Over time, I expect folks to contribute their own utility scripts here.

`/sys/default/projects` is the location where the common tODE *project entries* are located.
The *project entries* in this directory node should represent the full range of projects that have been ported to [GsDevKit][25].
Over time, I expect that the list will be expanded as folks port more projects to [GsDevKit][25].

####/sys/local
The `/sys/local/` directory node is a mount point for the disk directory `$GS_HOME/tode/sys/local`.

`/sys/local/home` is the location where the installation-wide tODE scripts are located.
You should add scripts to this directory node that you want all stones in your installation to share.

`/sys/local/projects` is the location where the installation-wide tODE *project entries* are located.
You should add *project entries* to this directory node that you want all the stones in your installation to share.
If you have clones of projects that are present in `/sys/default/projects`, you should copy the *project entry* from `/sys/default/projects` to `/sys/local/projects` and save your installation-specific modifications there.
By default, the *project entries* in `/sys/local/projects` have precedence over those in `/sys/default/projects`.

####/sys/stone
`/sys/stone` is mounted to point at the `/sys/stones/stones/<stone-name>` directory node.
In effect `/sys/stone/` is a *symbolic link* to `/sys/stones/stones/<stone-name>` and can be used in tODE commands to refer to the current stone's directory structure without having to specify the name of the current stone.

####/sys/stones
The `/sys/stones/` directory node is a mount point for the disk directory `$GS_HOME/tode/sys/stones`.

####/sys/stones/stones/\<stone-name\>

Here's a diagram of the structure in the `/sys/stones/stones/<stone-name>` directory node:

```
+-sys\
   +-stones\
     +-stones\
       +-<stone-name\>\
         +-dirs\
         +-home\
         +-homeComposition
         +-packages\
         +-projectComposition
         +-projects\
         +-repos\
```

####/sys/stones/stones/\<stone-name\>/dirs
`/sys/stones/stones/<stone-name>/dirs` is the location where you can find the list of git-based project directory nodes.
A git-based project uses a baseline and the project repository is either a `filetree://` repository that is managed by git or the project repository is a `github://` repository.
Each of the nodes in `/sys/stones/stones/<stone-name>/dirs` resolves to an instance of **ServerFileDirectory**.

By referencing the `dirs` node, you can form disk path references for tODE shell commands.
The following tODE shell script copies the contents of the [`tode` directory located in the Tode project repository][29] to `/sys/local/home` making it available in all stones in your [GsDevKitHome][23] installation:
 
```
cp /sys/stone/dirs/Tode/tode /sys/local/home/tode 
```

If you have a local git clone of the [tODE repository][30], then you might prefer to directly mount the `/sys/stone/dirs/Tode/tode` so that the changes that you make to any script will be made to the files in the git clone itself:

```
mount @/sys/stone/dirs/Tode/tode /sys/local/home tode
``` 

####/sys/stones/stones/\<stone-name\>/home
`/sys/stones/stones/<stone-name>/home` (or `/sys/stone/home`) is the location where the stone-specific tODE scripts are located.
By default, all new scripts and directory nodes that you create in `/home`, will be saved in this location.

####/sys/stones/stones/\<stone-name\>/homeComposition
The `/sys/stones/stones/<stone-name>/homeComposition` node defines the composition of the [`/home` directory node](#home).

```Smalltalk
(TDComposedDirectoryNode
    pathComposedDirectoryNodeNamed: 'home'
    topez: self topez)
    addPathNode: '/sys/stone/home';
    addPathNode: '/sys/local/home';
    addPathNode: '/sys/default/home';
    yourself
```

The order of `addPathNode:` statements defines the precedence order with the first entry having precedence over subsequent entries. 
There are variants of the `addPathNode:` method, that allow you to define a specific list of nodes to `exclude` or `include`.
You also have the option of specifying a `select block`.

To view or modify the composition specification use the following tODE shell commands:

```
edit /sys/stone/homeComposition            # view composition for current stone
edit /sys/stones/templates/homeComposition # view composition used to create new stones
``` 

####/sys/stones/stones/\<stone-name\>/packages
The `/sys/stones/stones/<stone-name>/packages` is the location where you can find the list of packages that are loaded into the stone.
Each of the nodes in  `/sys/stones/stones/<stone-name>/packages` resolves to an instance of **MCWorkingCopy**.

You can use the `packages` node in a node path in commands that call for a `<working-copy-path>`.
The following command brings up a window on the list of ancestors in the `Utf8Encoding` package:

```
mc ancestors @/sys/stone/packages/Utf8Encoding
```

####/sys/stones/stones/\<stone-name\>/projects
`/sys/stones/stones/<stone-name>/projects` (or `/sys/stone/projects`) is the location where the stone-specific *project entry* specifications are located.

####/sys/stones/stones/\<stone-name\>/projectComposition
The `/sys/stones/stones/<stone-name>/projectComposition` node defines the composition of the [`/projects` directory node](#projects).

```Smalltalk
(TDComposedDirectoryNode
    pathComposedDirectoryNodeNamed: 'projects'
    topez: self topez)
    addPathNode: '/sys/stone/projects';
    addPathNode: '/sys/local/projects';
    addPathNode: '/sys/default/projects';
    yourself
```

*See the [/sys/stones/stones/\<stone-name\>/homeComposition](#sysstonesstonesstone-namehomecomposition) section for information about specifying precedence.*

To view or modify the composition specification use the following tODE shell commands:

```
edit /sys/stone/projectComposition            # view composition for current stone
edit /sys/stones/templates/projectComposition # view composition used to create new stones
``` 

####/sys/stones/stones/\<stone-name\>/repos
The `/sys/stones/stones/<stone-name>/repos` node is the location where you can find the list of  git-based or filetree-based repositories associated with the loaded project entries in the stone.
Each of the nodes in  `/sys/stones/stones/<stone-name>/repos` is an instance of **MCRepository**.

You can use the `repos` node to reference a `<repository-path>` like the following:

```
mr packages @/sys/stone/repos/Tode
```

Each of the nodes in `/sys/stones/stones/<stone-name>/repos/<package-name>` resolves to an Array of **GoferResolvedReference** instances, that represent the list of versions for the named package in that repository.

A specific version can be resolved by using the version name in the node path:

```
mc compare image BaselineOfSton @/sys/stone/repos/Ston/BaselineOfSton/BaselineOfSton-dkh.2
```
 
###Construction of Project Entry and Script Sharing Structures
The `/sys/default/`, `/sys/local/`, and`/sys/stones/` directory nodes are mount points for the disk directories rooted in `$GS_HOME/tode/sys`.
All of the directories and files under `$GS_HOME/tode/sys` are shared by all stones.
A change to a script in `/home` will immediately be available to all other stones. 

The scripts and files in tODE are stored as objects on disk using STON.
STON files have a `.ston` extension.

The following tODE shell script is used to construct `/home`. `/projects`, and `/sys` directory nodes:

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

The script is invoked whenever a new stone is created by the `$GS_HOME/bin/createTodeStone` bash shell script.
The script is stored on disk at `$GS_HOME/tode/sys/default/client/scripts/setUpSys` and can be invoked at any time using the following tODE shell command:

```
script --script=setUpSys
```

If you wish to override the script to create additional artifacts in your tODE image, you may copy `$GS_HOME/tode/sys/default/client/scripts/setUpSys` to `$GS_HOME/tode/sys/local/client/scripts/` where you can make your edits.

For additional documentation on the commands used in the script:

```
man mount
/sys/default/bin/validateStoneSysNodes --help
```


---
I might want to go into detaial about the files in the directories?

```
+-$GS_HOME\
  +-tode\
    +-sys\
      +-default\
        +-bin\
        +-client\
          +-scripts\
          +-windowLayout\
        +-home\
        +-projects\
        +-server\
          +-scripts\
      +-local\
        +-client\
          +-descriptions\
          +-scripts\
          +-windowLayout\
         +-home\
        +-projects\
        +-server\
          +-scripts\
      +-stones\
        +-stones\
          +-<stone-name>\
            +-dirs.ston
            +-home\
            +-homeComposition.ston
            +-packages.ston
            +-projectComposition.ston
            +-projects\
            +-repos.ston
        +-client\
          +-scripts\
          +-windowLayout\
        +-server\
          +-scripts\
        +-templates\
            +-dirs.ston
            +-homeComposition.ston
            +-packages.ston
            +-projectComposition.ston
            +-repos.ston
```


##Converting v0.0.2 project structure to v0.1.0

1. install current gsDevKitHome project
2. pull `tode:dev`, pull `gsDevKitHome:dev` ... work out update instructions ...
3. finalize the converting/upgrading section of tODE release notes
4. pass through gsdevkithome scripts updating for new stone creation

```
    updateClient             # update client-side tODE
    project load Tode        # update server-side tODE
    script --script=setUpSys # build tODE /sys structure
```

[1]: https://github.com/dalehenrich/tode/releases/tag/v0.0.2
[3]: https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloScriptingAPI.md#loading
[6]: https://github.com/dalehenrich/tode/issues/110
[7]: https://github.com/dalehenrich/tode/issues/106
[8]: https://github.com/dalehenrich/tode/issues/123
[9]: https://github.com/dalehenrich/tode/issues/125
[10]: https://github.com/dalehenrich/tode/issues/124
[11]: https://github.com/dalehenrich/tode/issues/129
[12]: https://github.com/dalehenrich/tode/issues/5
[13]: https://github.com/dalehenrich/tode/issues/130
[14]: https://github.com/dalehenrich/tode/issues/143
[15]: https://github.com/dalehenrich/tode/issues/135
[16]: https://github.com/dalehenrich/tode/issues/147
[17]: https://github.com/dalehenrich/tode/issues/100
[18]: https://github.com/dalehenrich/tode/issues/148
[19]: https://github.com/dalehenrich/tode/issues/149
[20]: https://github.com/dalehenrich/tode/pull/150
[21]: https://github.com/dalehenrich/tode/pull/140
[22]: https://github.com/dalehenrich/tode/releases/tag/v0.1.0
[23]: https://github.com/GsDevKit/gsDevKitHome
[24]: https://github.com/GsDevKit/gsDevKitHome/blob/master/docs/releaseNotes/releaseNotes1.0.0.md
[25]: https://github.com/GsDevKit
[26]: http://downloads.gemtalksystems.com/docs/GemStone64/3.2.x/GS64-Topaz-3.2.pdf
[27]: ../images/projectListMenu.png
[28]: https://github.com/orgs/GsDevKit/people
[29]: ../../../tode
[30]: https://github.com/dalehenrich/tode
[31]: https://github.com/dalehenrich/tode/pull/152
[32]: https://github.com/dalehenrich/tode/pull/154
[33]: https://github.com/dalehenrich/tode/pull/155
[34]: https://github.com/dalehenrich/tode/pull/157
[35]: https://help.github.com/articles/which-remote-url-should-i-use/
[36]: https://help.github.com/articles/generating-ssh-keys
[37]: https://developer.github.com/guides/using-ssh-agent-forwarding/
[38]: http://git-scm.com/docs/gitcredentials
[39]: http://git-scm.com/docs/git-credential-store
