# Release Notes 0.0.3

- [Bug Fixes](#bug-fixes)
- [Pull Requests](#pull-requests)
- [Project Entries for tODE](#project-entries-for-tode)
  - [Project Entry registration and sharing for tODE v0.0.2](#project-entry-registration-and-sharing-for-tode-v002)
  - [Project Entries for tODE v0.0.3](#project-entries-for-tode-v003)
    - [Directory Node Composition](#directory-node-composition)
    - [/home](#home)
    - [/projects](#projects)
    - [/sys](#sys)
- [Converting v0.0.2 project structure to v0.0.3](#converting-v002-project-structure-to-v003)

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

##Project Entries for tODE
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

###Project Entry registration and sharing for tODE v0.0.2
In [tODE v0.0.2][1], there is a fairly simplistic model for registering a *project entry*:

> The subdirectories of the `/home` directory node in tODE are scanned for a node named `project`. 
Each `project` node is expected to return an instance of **TDProjectEntryDefinition**.

Project entries are shared between stones, by mounting a common directory on disk (typically `$GS_HOME/tode/home`) and using the following tODE shell command:

```
mount --todeRoot home /      # see `man mount` for more information
```

###Project Entries for tODE v0.0.3
In [tODE v0.0.3][22], the mechanisms for registration and sharing has been changed.

In a mutli-person production installation. it is very easy to to imagine that multiple stones will be used for production, development and testing.
In such an environment it is desirable to provide site-wide *project entries* and scripts that are shared by all stones.
Additionally it is desirable to be able to customize *project entries* and scripts on a stone by stone basis.

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

Each stone that is added to the system is allocated a directory (`$GS_HOME/tode/sys/stones/stones/<stone-name>`) and as with the  `$GS_HOME/tode/sys/local` directory, stone-speicifice exclusions, overrides and additions may be made.

The exact composition of a directory node in tODE is specified by a *composition node*.
The order of *path nodes* in the compostion defines override order. 
One may add *path nodes* that `excludes` specific entries, `includes` specific entries or uses a custom `selectBlock` using the following protocol in **TDComposedDirectoryNode**:

- addPathNode:
- addPathNode:excludes:
- addPathNode:excludes:includes:
- addPathNode:includes:
- addPathNode:selectBlock:

At the top-level of the tODE directory node structure, the `/home` directory node has been retained and two new directory nodes have been added `/projects` and `/sys`:

```
+-home\
+-projects\
+-sys\
```


####/home
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
As with the `/home` directory node, the `/projects` directory node is specified by a *composition node*:

```Smalltalk
(TDComposedDirectoryNode
    pathComposedDirectoryNodeNamed: 'home'
    topez: self topez)
    addPathNode: '/sys/stone/projects';
    addPathNode: '/sys/local/projects';
    addPathNode: '/sys/default/projects';
    yourself
```

####/sys


As in [tODE v0.0.2][1], the `/home` directory node is the root of the shared script structure, however, project registrations have been moved from subdirectories of the `/home` directory node to a separate `/project` directory node. 
The `/project` directory node contains only nodes that define *project entries*.
All project entries found in `/project` are registered with the `project list`.

```
+-home\
+-projects\
+-sys\
   +-default\
   +-local\
   +-stone@\
      +-dirs@\
      +-home\
      +-homeComposition@
      +-packages@\
      +-projectComposition@
      +-projects\
      +-repos@\
   +-stones\
     +-stones\
     +-templates\
```

```
    updateClient             # update client-side tODE
    project load Tode        # update server-side tODE
    script --script=setUpSys # build tODE /sys structure
```

##Converting v0.0.2 project structure to v0.0.3

[1]: https://github.com/dalehenrich/tode/releases/tag/v0.0.2
[2]: https://github.com/dalehenrich/metacello-work/blob/master/docs/LockCommandReference.md#lock-command-reference
[3]: https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloScriptingAPI.md#loading
[4]: images/projectList.png
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
