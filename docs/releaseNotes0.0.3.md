# Release Notes 0.0.3

- [Bug Fixes](#bug-fixes)
- [Project Entries](#project-entries-circa-tode-v002)
  - [Project Entry registration](#project-entry-registration)
  - [Project Entry sharing](#project-entry-sharing)

##Bug Fixes
##Project Entries circa tODE v0.0.2
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

###Project Entry registration

In [tODE v0.0.2][1], there was a fairly simplistic model for registering a *project entry*:

> The subdirectories of the `/home` directory node in tODE are scanned for a node named `project`. 
Each `project` node is expected to return an instance of **TDProjectEntryDefinition**.

###Project Entry sharing
Project entries were shared between stones, by mounting a standard directory on disk (`$GS_HOME/tode/home`):

```
mount --todeRoot home /      # see `man mount` for more information
```




defining shared object structure. `$GS_HOME/tode/home` was *mounted* into the the tODE directory node structure as `/home` using the `mount` command:

```
mount --todeRoot home /      # use `man mount` for more information
```

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

[1]: https://github.com/dalehenrich/tode/releases/tag/v0.0.2
[2]: https://github.com/dalehenrich/metacello-work/blob/master/docs/LockCommandReference.md#lock-command-reference
[3]: https://github.com/dalehenrich/metacello-work/blob/master/docs/MetacelloScriptingAPI.md#loading
[4]: images/projectList.png
[5]: https://github.com/GsDevKit/gsDevKitHome/blob/master/tode/sys/default/projects/seaside.ston
